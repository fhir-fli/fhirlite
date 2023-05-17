import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../global.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  @override
  Future<bool> build() async {
    // One could watch more providers and write logic accordingly

    final isLoggedIn = await ref.watch(loginProvider).isLoggedIn;

    ref.listenSelf((_, __) {
      // One could write more conditional logic for when to call redirection
      if (state.isLoading) {
        return;
      }
      routerListener?.call();
    });

    return isLoggedIn;
  }

  // void updateToLoggedIn() => state = true as AsyncValue<bool>;

  /// Our application routes. Obtained through code generation
  List<GoRoute> get routes => $appRoutes;

  String? redirect(BuildContext context, GoRouterState state) {
    /// Sometimes, opening an existing flutter app redirect goes to a path that it doesn't know how to parse
    /// For example, `xcrun simctl openurl booted "https://YOUR-SITE/#/login?request-no=demo&id=2"`
    /// is interpreted as `/#/login?request-no=demo&id=2` instead of `/login?request-no=demo&id=2`
    /// To fix, this will remove the unnecessary leading hash and re-run this [redirect] method
    if (state.location.startsWith('/#/')) {
      return state.location.replaceFirst('/#', '');
    }

    final isLoggedIn = this.state.valueOrNull;

    /// If there is no state for this Notifier, return null
    if (isLoggedIn == null) {
      return null;
    } else {
      /// Check if we're on the Init screen
      final isInit = state.subloc == InitRoute.path;

      /// If we are on the Init screen
      if (isInit) {
        /// Check if they're logged In
        return isLoggedIn

            /// If they are and we should show the Welcome Screen
            ? clientAssets.clientFeatures.shouldShowWelcome

                /// Go to the WelcomeRoute
                ? WelcomeRoute.path

                /// Otherwise, the TaskRoute
                : TaskRoute.path

            /// If we're NOT logged in, got to LoginRoute
            : _loginRouteWithParamsIfPresent(state);
      } else

      /// If they are logged in
      if (isLoggedIn) {
        /// check if it's the Demo
        final isDemoEnabled = ref.read(isDemoEnabledProvider);

        /// If so, they can pretty much go anywhere
        if (isDemoEnabled) {
          return null;
        } else

        /// However, if it's not the Demo, they can't access the DemoRoute or
        /// the PureDemoRoute
        if (state.location == DemoRoute.path ||
            state.location == PureDemoRoute.path) {
          /// And we return them to the LoginRoute
          return LoginRoute.path;
        } else

        /// If they're logged in but request the LoginRoute or
        /// LoginConfirmationRoute we show "Are you sure you want to logout"
        if (state.location == LoginRoute.path ||
            state.location == LoginConfirmRoute.path) {
          // TODO(FireJuun): I think this needs to go here, but it doesn't like
          // context
          // styledAppLogoutConfirmation(context);
          return null;
        } else {
          /// If none of the above, they can proceed unmolested
          return null;
        }
      } else

      /// If they're not logged in
      {
        /// But they are trying to go to a LoginRoute, that's allowed
        if (state.subloc == LoginRoute.path ||
            state.subloc == '${LoginRoute.path}/${LoginConfirmRoute.path}') {
          return null;
        } else

        /// They can also proceed directly to the Pure Demo Route
        if (state.subloc == PureDemoRoute.path) {
          return null;
        } else if (state.subloc == LoginConfirmRoute.path) {
          /// Check that all necessary parameters are passed as well
          if (state.queryParams['request-no'] != null &&
              state.queryParams['id'] != null) {
            return null;
          } else {
            return _loginRouteWithParamsIfPresent(state);
          }
        } else {
          return _loginRouteWithParamsIfPresent(state);
        }
      }
    }
  }

  String _loginRouteWithParamsIfPresent(GoRouterState state) {
    ///
    /// Check for passed parameters. In order...
    if (state.queryParams['request-no'] != null &&
        state.queryParams['id'] != null) {
      ///
      /// All parameters are present:  [request-no] + [id]
      return '${LoginRoute.path}?request-no=${state.queryParams['request-no']}&id=${state.queryParams['id']}';
    } else if (state.queryParams['request-no'] != null) {
      ///
      /// Only [request-no] is present
      return '${LoginRoute.path}?request-no=${state.queryParams['request-no']}';
    } else if (state.queryParams['id'] != null) {
      ///
      /// Only [id] is present
      return '${LoginRoute.path}?id=${state.queryParams['id']}';
    }

    /// no login parameters were passed. For now, all other parameters are ignored by default
    return LoginRoute.path;
  }

  /// Adds [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method on creation to handle its
  /// internal [ChangeNotifier].
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  /// Removes [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method when disposing,
  /// so that it removes its callback when destroyed.
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
