import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  @override
  Future<bool> build() async {
    // One could watch more providers and write logic accordingly

    final isLoggedIn = await ref.watch(clientProvider.notifier).isLoggedIn();

    ref.listenSelf((_, __) {
      // One could write more conditional logic for when to call redirection
      if (state.isLoading) return;
      routerListener?.call();
    });

    return isLoggedIn;
  }

  /// Our application routes. Obtained through code generation
  List<GoRoute> get routes => $appRoutes;

  String? redirect(BuildContext context, GoRouterState state) {
    final isLoggedIn = this.state.valueOrNull;

    /// If there's no state, something isn't initialized, so to Login we go
    if (isLoggedIn == null) {
      return LoginRoute.path;

      /// If you ARE logged in, you're good to go
    } else if (isLoggedIn) {
      return null;
    } else {
      /// If you're here you're not logged in, you need to do so
      return LoginRoute.path;
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
