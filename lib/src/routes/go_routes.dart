import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../src.dart';

/// Note, due to this issue, I am temporarily changing this from a .g file to .f
/// This way, build runner won't auto delete it
/// issue: https://github.com/flutter/flutter/issues/111837
part 'go_routes.g.dart';

@TypedGoRoute<InitRoute>(path: InitRoute.path)
class InitRoute extends GoRouteData {
  const InitRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AlertView('Initializing...');
}

@TypedGoRoute<LoginRoute>(path: LoginRoute.path)
class LoginRoute extends GoRouteData {
  const LoginRoute();
  static const path = '/login';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginView();
}

@TypedGoRoute<OnboardingRoute>(path: OnboardingRoute.path)
class OnboardingRoute extends GoRouteData {
  const OnboardingRoute();
  static const path = '/onboarding';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginView();
}

@TypedGoRoute<AlertRoute>(path: AlertRoute.path)
class AlertRoute extends GoRouteData {
  const AlertRoute(this.message);
  static const path = '/alert:message';
  final String message;

  @override
  Widget build(BuildContext context, GoRouterState state) => AlertView(message);
}

@TypedGoRoute<LoadingRoute>(path: LoadingRoute.path)
class LoadingRoute extends GoRouteData {
  const LoadingRoute();
  static const path = '/loading';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoadingView();
}

class ErrorRoute extends GoRouteData {
  const ErrorRoute(this.error);

  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AlertView(error.toString());
  }
}
