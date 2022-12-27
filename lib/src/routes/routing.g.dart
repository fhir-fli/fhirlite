// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $initRoute,
      $fhirLiteRoute,
      $homeRoute,
      $loginRoute,
      $patientRoute,
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

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $fhirLiteRoute => GoRouteData.$route(
      path: '/fhirlite:configFilePath',
      factory: $FhirLiteRouteExtension._fromState,
    );

extension $FhirLiteRouteExtension on FhirLiteRoute {
  static FhirLiteRoute _fromState(GoRouterState state) => FhirLiteRoute(
        configFilePath: state.queryParams['config-file-path'],
      );

  String get location => GoRouteData.$location(
        '/fhirlite${Uri.encodeComponent(configFilePath!)}',
        queryParams: {
          if (configFilePath != null) 'config-file-path': configFilePath!,
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute(
        configFilePath: state.queryParams['config-file-path'],
      );

  String get location => GoRouteData.$location(
        '/home',
        queryParams: {
          if (configFilePath != null) 'config-file-path': configFilePath!,
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $patientRoute => GoRouteData.$route(
      path: '/patient',
      factory: $PatientRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'index',
          factory: $PatientIndexRouteExtension._fromState,
        ),
      ],
    );

extension $PatientRouteExtension on PatientRoute {
  static PatientRoute _fromState(GoRouterState state) => const PatientRoute();

  String get location => GoRouteData.$location(
        '/patient',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $PatientIndexRouteExtension on PatientIndexRoute {
  static PatientIndexRoute _fromState(GoRouterState state) =>
      const PatientIndexRoute();

  String get location => GoRouteData.$location(
        '/patient/index',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
