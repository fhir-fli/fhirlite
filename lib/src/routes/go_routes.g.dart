// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $initRoute,
      $loginRoute,
      $fhirRoute,
      $alertRoute,
      $loadingRoute,
    ];

RouteBase get $initRoute => GoRouteData.$route(
      path: '/init',
      factory: $InitRouteExtension._fromState,
    );

extension $InitRouteExtension on InitRoute {
  static InitRoute _fromState(GoRouterState state) => const InitRoute();

  String get location => GoRouteData.$location(
        '/init',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $fhirRoute => GoRouteData.$route(
      path: '/fhir',
      factory: $FhirRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'fhirlist',
          factory: $FhirListRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'fhirPretty',
          factory: $FhirPrettyRouteExtension._fromState,
        ),
      ],
    );

extension $FhirRouteExtension on FhirRoute {
  static FhirRoute _fromState(GoRouterState state) => const FhirRoute();

  String get location => GoRouteData.$location(
        '/fhir',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $FhirListRouteExtension on FhirListRoute {
  static FhirListRoute _fromState(GoRouterState state) => const FhirListRoute();

  String get location => GoRouteData.$location(
        '/fhir/fhirlist',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $FhirPrettyRouteExtension on FhirPrettyRoute {
  static FhirPrettyRoute _fromState(GoRouterState state) =>
      const FhirPrettyRoute();

  String get location => GoRouteData.$location(
        '/fhir/fhirPretty',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $alertRoute => GoRouteData.$route(
      path: '/alert:message',
      factory: $AlertRouteExtension._fromState,
    );

extension $AlertRouteExtension on AlertRoute {
  static AlertRoute _fromState(GoRouterState state) => AlertRoute(
        state.pathParameters['message']!,
      );

  String get location => GoRouteData.$location(
        '/alert${Uri.encodeComponent(message)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $loadingRoute => GoRouteData.$route(
      path: '/loading',
      factory: $LoadingRouteExtension._fromState,
    );

extension $LoadingRouteExtension on LoadingRoute {
  static LoadingRoute _fromState(GoRouterState state) => const LoadingRoute();

  String get location => GoRouteData.$location(
        '/loading',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
