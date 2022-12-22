import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routing.g.dart';

/// ********** ********** *********** *********** **********
/// *********** ROUTING / INHERITANCE FOR: ALERT ***********
/// ********** ********** *********** *********** **********

@TypedGoRoute<InitRoute>(path: InitRoute.path)
class InitRoute extends GoRouteData {
  const InitRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context) => const AlertView();
}

@TypedGoRoute<FhirLiteRoute>(path: FhirLiteRoute.path)
class FhirLiteRoute extends GoRouteData {
  const FhirLiteRoute({this.configFilePath});
  static const path = '/fhirlite:configFilePath';
  final String? configFilePath;

  @override
  Widget build(BuildContext context) => FhirLiteView(configFilePath);
}

@TypedGoRoute<HomeRoute>(path: HomeRoute.path)
class HomeRoute extends GoRouteData {
  const HomeRoute({this.configFilePath});
  static const path = '/home';
  final String? configFilePath;

  @override
  Widget build(BuildContext context) => const HomeView();
}

@TypedGoRoute<LoginRoute>(path: LoginRoute.path)
class LoginRoute extends GoRouteData {
  const LoginRoute();
  static const path = '/login';

  @override
  Widget build(BuildContext context) => const LoginView();
}

/// ********** ********** *********** *********** **********
/// *********** ROUTING / INHERITANCE FOR: Pateint**********
/// ********** ********** *********** *********** **********

@TypedGoRoute<PatientRoute>(
    path: PatientRoute.path,
    routes: <TypedGoRoute<GoRouteData>>[
      TypedGoRoute<PatientIndexRoute>(path: PatientIndexRoute.path)
    ])
class PatientRoute extends GoRouteData {
  const PatientRoute();
  static const path = '/patient';

  @override
  Widget build(BuildContext context) => const PatientView();
}

class PatientIndexRoute extends GoRouteData {
  const PatientIndexRoute();
  static const path = '/patient/index';

  @override
  Widget build(BuildContext context) => const PatientIndexView();
}

/// ********** ********** *********** *********** **********
/// *********** ROUTING / INHERITANCE FOR: ERROR ***********
/// ********** ********** *********** *********** **********

/// ERROR ROUTE ***********
class ErrorRoute extends GoRouteData {
  const ErrorRoute(this.error, this.requestNumber);

  final Exception error;
  final String requestNumber;

  @override
  Widget build(BuildContext context) {
    return ErrorView(error, requestNumber);
  }
}
