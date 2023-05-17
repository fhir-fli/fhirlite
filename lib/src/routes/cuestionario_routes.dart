import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Note, due to this issue, I am temporarily changing this from a .g file to .f
/// This way, build runner won't auto delete it
/// issue: https://github.com/flutter/flutter/issues/111837
part 'cuestionario_routes.f.dart';

/// ********** ********** *********** *********** **********
/// *********** ROUTING / INHERITANCE FOR: INIT ***********
/// ********** ********** *********** *********** **********

@TypedGoRoute<InitRoute>(path: InitRoute.path)
class InitRoute extends GoRouteData {
  const InitRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AlertView('Initializing...');
}

/// ********** ********** *********** *********** **********
/// *********** ROUTING / INHERITANCE FOR: TASK ***********
/// ********** ********** *********** *********** **********

/// Typical path for tasks, questionnaires, and the intro screen (shown at start)
@TypedGoRoute<TaskRoute>(
    path: TaskRoute.path,
    routes: <TypedGoRoute<GoRouteData>>[
      TypedGoRoute<WelcomeRoute>(path: WelcomeRoute.path),
      TypedGoRoute<QuestionnaireRoute>(path: QuestionnaireRoute.path),
      TypedGoRoute<CustomOptOutRoute>(path: CustomOptOutRoute.path)
    ])

/// TASK ROUTE ***********
class TaskRoute extends GoRouteData {
  const TaskRoute();
  static const path = '/task';

  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
      builder: (context, ref, child) =>
          TaskView(taskPath: ref.watch(activeTaskPathProvider)));
}

/// WELCOME ROUTE ***********
class WelcomeRoute extends GoRouteData {
  const WelcomeRoute();
  static const path = 'intro';

  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
      builder: (context, ref, child) =>
          ref.watch(activeTaskPathProvider).isNotEmpty
              ? const WelcomeView()
              : const DataLoadingView());
}

/// QUESTIONNAIRE ROUTE ***********
class QuestionnaireRoute extends GoRouteData {
  const QuestionnaireRoute(this.qid);
  static const path = 'q/:qid';
  final int qid;

  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
      builder: (context, ref, child) =>
          ref.watch(activeTaskPathProvider).isNotEmpty
              ? QuestionnairePagesView(qid)
              : const DataLoadingView());
}

/// CUSTOM OPT OUT ROUTE ***********
class CustomOptOutRoute extends GoRouteData {
  const CustomOptOutRoute();
  static const path = 'custom-opt-out';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CustomOptOutView();
}

/// ********** ********** *********** *********** **********
/// *********** ROUTING / INHERITANCE FOR: DEMO ***********
/// ********** ********** *********** *********** **********

/// Path for opening the demo, which may itself point to its own series of tasks/questionnaires
@TypedGoRoute<DemoRoute>(path: DemoRoute.path)

/// DEMO ROUTE ***********
class DemoRoute extends GoRouteData {
  const DemoRoute(this.demoNumber);
  static const path = '/demo/:demoNumber';
  final int demoNumber;

  @override
  Widget build(BuildContext context, GoRouterState state) => demoNumber != 2
      ? const LoginRoute().build(context, state)
      : const DemoView();
}

/// ********** ********** *********** *********** **********
/// *********** ROUTING / INHERITANCE FOR: PUREDEMO ***********
/// ********** ********** *********** *********** **********

/// Path for opening the demo, which may itself point to its own series of
/// tasks/questionnaires
@TypedGoRoute<PureDemoRoute>(path: PureDemoRoute.path)

/// DEMO ROUTE ***********
class PureDemoRoute extends GoRouteData {
  const PureDemoRoute();
  static const path = '/pure-demo';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PureDemoView();
}

/// ********** ********** *********** *********** **********
/// *********** ROUTING / INHERITANCE FOR: LOGIN ***********
/// ********** ********** *********** *********** **********

/// Path for logging in and confirming via one-time passcode
@TypedGoRoute<LoginRoute>(
    path: LoginRoute.path,
    routes: <TypedGoRoute<GoRouteData>>[
      TypedGoRoute<LoginConfirmRoute>(path: LoginConfirmRoute.path),
    ])

///  LOGIN ROUTE ***********
class LoginRoute extends GoRouteData {
  const LoginRoute({
    this.requestNumber,
    this.requestNo,
    this.id,
    this.clientId,
    this.iss,
  });
  static const path = '/login';
  final String? requestNumber;
  final String? requestNo;
  final String? id;
  final String? clientId;
  final String? iss;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      Consumer(builder: (context, ref, child) {
        final baseUri = ref.read(uriParametersProvider);
        final uriRequestNumber = baseUri.queryParameters['requestNumber'];
        final uriRequestNo = baseUri.queryParameters['request-no'];
        final uriId = baseUri.queryParameters['id'];
        final uriClientId = baseUri.queryParameters['clientId'];
        final uriIss = baseUri.queryParameters['iss'];

        /// Preferentially use 'request-number' over 'request-no', but accept
        /// both so as to be backwards compatible with other InCK links
        return LoginView(
          requestNo:
              requestNumber ?? requestNo ?? uriRequestNumber ?? uriRequestNo,
          id: id ?? uriId,
          clientId: uriClientId == 'null' ? null : uriClientId,
          iss: uriIss,
          smartLaunch: uriClientId != null &&
              uriClientId != 'null' &&
              uriIss != null &&
              uriIss != 'null',
        );
      });
}

/// *********** LOGIN_CONFIRM ROUTE ***********
class LoginConfirmRoute extends GoRouteData {
  const LoginConfirmRoute({this.requestNumber, this.id, this.otp});
  static const path = 'confirm';
  final String? requestNumber;
  final String? id;

  /// Access Code (or 'One Time Password', or OTP) may be set via the path
  final String? otp;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      Consumer(builder: (context, ref, child) {
        return ConfirmLoginView(
          requestNo: requestNumber ?? '',
          id: id ?? '',
          accessCode: otp,
        );
      });
}

/// ********** ********** *********** *********** **********
/// ******** ROUTING / INHERITANCE FOR: CHANGE_USER ********
/// ********** ********** *********** *********** **********

/// Path for confirming if we want to change the user (logging out current)
@TypedGoRoute<ChangeUserRoute>(path: ChangeUserRoute.path)

/// CHANGE USER ROUTE ***********
class ChangeUserRoute extends GoRouteData {
  const ChangeUserRoute(this.requestNumber, {this.id, this.otp});
  static const path = '/change/:requestNumber';
  final String requestNumber;
  final String? id;

  /// Access Code (or 'One Time Password', or OTP) may be set via the path
  final String? otp;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ChangeUserView(requestNumber, id: id, otp: otp);
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
  Widget build(BuildContext context, GoRouterState state) {
    Sentry.captureException(error, stackTrace: StackTrace.current);
    return ErrorView(error, requestNumber);
  }
}
