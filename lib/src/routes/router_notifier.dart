import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../src.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  @override
  Future<bool> build() async {
    // One could watch more providers and write logic accordingly

    final isLoggedIn = ref.watch(loginProvider);

    ref.listenSelf((_, __) {
      // One could write more conditional logic for when to call redirection
      if (state.isLoading) {
        return;
      }
      routerListener?.call();
    });

    return isLoggedIn;
  }

  /// Our application routes. Obtained through code generation
  List<RouteBase> get routes => $appRoutes;

  String? redirect(BuildContext context, GoRouterState state) {
    print(state.location);

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
    } else if (isLoggedIn) {
      return null;
    } else {
      return '/login';
    }
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
