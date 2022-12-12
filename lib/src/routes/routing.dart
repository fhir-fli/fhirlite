import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routing.g.dart';

/// ********** ********** *********** *********** **********
/// *********** ROUTING / INHERITANCE FOR: ALERT ***********
/// ********** ********** *********** *********** **********

@TypedGoRoute<AlertRoute>(
    path: AlertRoute.path,
    routes: <TypedGoRoute<GoRouteData>>[
      TypedGoRoute<InitRoute>(path: InitRoute.path)
    ])
class AlertRoute extends GoRouteData {
  const AlertRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context) => const AlertView();
}

class InitRoute extends GoRouteData {
  const InitRoute({this.configFilePath});
  static const path = '/init:configFilePath';
  final String? configFilePath;

  @override
  Widget build(BuildContext context) => InitView(configFilePath);
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
