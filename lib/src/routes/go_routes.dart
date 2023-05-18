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
  Widget build(BuildContext context, GoRouterState state) => LoginView();
}

class ErrorRoute extends GoRouteData {
  const ErrorRoute(this.error);

  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AlertView(error.toString());
  }
}
