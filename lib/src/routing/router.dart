import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../src.dart';

enum Routes {
  init,
  login,
  loading,
  fhir,
  alertMessage,
  error,
}

final goRouter = GoRouter(
  initialLocation: '/login',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: Routes.init.name,
      pageBuilder: (context, state) => const MaterialPage(
        fullscreenDialog: true,
        child: AlertView('Initializing...'),
      ),
    ),
    GoRoute(
      path: '/login',
      name: Routes.login.name,
      pageBuilder: (context, state) => const MaterialPage(
        fullscreenDialog: true,
        child: LoginView(),
      ),
    ),
    GoRoute(
      path: '/fhir',
      name: Routes.fhir.name,
      pageBuilder: (context, state) => MaterialPage(
        fullscreenDialog: true,
        child: FhirHomeView(),
      ),
    ),
    GoRoute(
      path: '/loading',
      name: Routes.loading.name,
      pageBuilder: (context, state) => const MaterialPage(
        fullscreenDialog: true,
        child: AlertView('Loading...'),
      ),
    ),
    GoRoute(
      path: '/alert:message',
      name: Routes.alertMessage.name,
      pageBuilder: (context, state) => const MaterialPage(
        fullscreenDialog: true,
        child: AlertView(''),
      ),
    ),
    GoRoute(
      path: '/error',
      name: Routes.error.name,
      pageBuilder: (context, state) => const MaterialPage(
        fullscreenDialog: true,
        child: AlertView(''),
      ),
    ),
  ],
);
