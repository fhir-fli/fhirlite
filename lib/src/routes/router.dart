import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'routes.dart';

part 'router.g.dart';

/// **************************************************************************
/// Most of this is taken directly from
/// https://github.com/lucavenir/go_router_riverpod
/// **************************************************************************
final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@riverpod
GoRouter router(RouterRef ref) {
  final sub = ref.listen(routerNotifierProvider, (_, __) {});
  ref.onDispose(sub.close);
  final notifier = ref.read(routerNotifierProvider.notifier);
  return GoRouter(
      navigatorKey: _key,
      refreshListenable: notifier,
      debugLogDiagnostics: true,
      initialLocation: AlertRoute.path,
      routes: notifier.routes,
      redirect: notifier.redirect,
      errorBuilder: (c, s) =>
          ErrorRoute(s.error ?? const RouteFailuresUnspecifiedError(), '1')
              .build(c));
}
