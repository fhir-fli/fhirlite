// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuestionario_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $initRoute,
      $taskRoute,
      $demoRoute,
      $pureDemoRoute,
      $loginRoute,
      $changeUserRoute,
    ];

GoRoute get $initRoute => GoRouteData.$route(
      path: '/',
      factory: $InitRouteExtension._fromState,
    );

extension $InitRouteExtension on InitRoute {
  static InitRoute _fromState(GoRouterState state) => const InitRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $taskRoute => GoRouteData.$route(
      path: '/task',
      factory: $TaskRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'intro',
          factory: $WelcomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'q/:qid',
          factory: $QuestionnaireRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'custom-opt-out',
          factory: $CustomOptOutRouteExtension._fromState,
        ),
      ],
    );

extension $TaskRouteExtension on TaskRoute {
  static TaskRoute _fromState(GoRouterState state) => const TaskRoute();

  String get location => GoRouteData.$location(
        '/task',
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $WelcomeRouteExtension on WelcomeRoute {
  static WelcomeRoute _fromState(GoRouterState state) => const WelcomeRoute();

  String get location => GoRouteData.$location(
        '/task/intro',
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $QuestionnaireRouteExtension on QuestionnaireRoute {
  static QuestionnaireRoute _fromState(GoRouterState state) =>
      QuestionnaireRoute(
        int.parse(state.params['qid']!),
      );

  String get location => GoRouteData.$location(
        '/task/q/${Uri.encodeComponent(qid.toString())}',
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $CustomOptOutRouteExtension on CustomOptOutRoute {
  static CustomOptOutRoute _fromState(GoRouterState state) =>
      const CustomOptOutRoute();

  String get location => GoRouteData.$location(
        '/task/custom-opt-out',
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $demoRoute => GoRouteData.$route(
      path: '/demo/:demoNumber',
      factory: $DemoRouteExtension._fromState,
    );

extension $DemoRouteExtension on DemoRoute {
  static DemoRoute _fromState(GoRouterState state) => DemoRoute(
        int.parse(state.params['demoNumber']!),
      );

  String get location => GoRouteData.$location(
        '/demo/${Uri.encodeComponent(demoNumber.toString())}',
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $pureDemoRoute => GoRouteData.$route(
      path: '/pure-demo',
      factory: $PureDemoRouteExtension._fromState,
    );

extension $PureDemoRouteExtension on PureDemoRoute {
  static PureDemoRoute _fromState(GoRouterState state) => const PureDemoRoute();

  String get location => GoRouteData.$location(
        '/pure-demo',
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'confirm',
          factory: $LoginConfirmRouteExtension._fromState,
        ),
      ],
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute(
        requestNumber: state.queryParams['request-number'],
        requestNo: state.queryParams['request-no'],
        id: state.queryParams['id'],
        clientId: state.queryParams['client-id'],
        iss: state.queryParams['iss'],
      );

  String get location => GoRouteData.$location(
        '/login',
        queryParams: {
          if (requestNumber != null) 'request-number': requestNumber!,
          if (requestNo != null) 'request-no': requestNo!,
          if (id != null) 'id': id!,
          if (clientId != null) 'client-id': clientId!,
          if (iss != null) 'iss': iss!,
        },
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $LoginConfirmRouteExtension on LoginConfirmRoute {
  static LoginConfirmRoute _fromState(GoRouterState state) => LoginConfirmRoute(
        requestNumber: state.queryParams['request-number'],
        id: state.queryParams['id'],
        otp: state.queryParams['otp'],
      );

  String get location => GoRouteData.$location(
        '/login/confirm',
        queryParams: {
          if (requestNumber != null) 'request-number': requestNumber!,
          if (id != null) 'id': id!,
          if (otp != null) 'otp': otp!,
        },
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $changeUserRoute => GoRouteData.$route(
      path: '/change/:requestNumber',
      factory: $ChangeUserRouteExtension._fromState,
    );

extension $ChangeUserRouteExtension on ChangeUserRoute {
  static ChangeUserRoute _fromState(GoRouterState state) => ChangeUserRoute(
        state.params['requestNumber']!,
        id: state.queryParams['id'],
        otp: state.queryParams['otp'],
      );

  String get location => GoRouteData.$location(
        '/change/${Uri.encodeComponent(requestNumber)}',
        queryParams: {
          if (id != null) 'id': id!,
          if (otp != null) 'otp': otp!,
        },
      );

  // manually disabled, due to this error: : https://github.com/flutter/flutter/issues/111837
  void go(BuildContext context) => context.go(location);
  // void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
