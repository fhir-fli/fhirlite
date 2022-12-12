// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $alertRoute,
    ];

GoRoute get $alertRoute => GoRouteData.$route(
      path: '/',
      factory: $AlertRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/init:configFilePath',
          factory: $InitRouteExtension._fromState,
        ),
      ],
    );

extension $AlertRouteExtension on AlertRoute {
  static AlertRoute _fromState(GoRouterState state) => const AlertRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $InitRouteExtension on InitRoute {
  static InitRoute _fromState(GoRouterState state) => InitRoute(
        configFilePath: state.queryParams['config-file-path'],
      );

  String get location => GoRouteData.$location(
        '/init${Uri.encodeComponent(configFilePath!)}',
        queryParams: {
          if (configFilePath != null) 'config-file-path': configFilePath!,
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
