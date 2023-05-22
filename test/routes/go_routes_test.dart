import 'package:fhirlite/src/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> goRouter() async {
  final container = ProviderContainer();
  var goRouter = container.read(routerProvider);
  // group('Go Router', () {
  // test('Initialize', () {
  //   expect(goRouter.location, '/');
  // });
  testWidgets('Initial Wdiget', (widgetTester) async {
    await widgetTester.pumpWidget(
      MaterialApp.router(
        routeInformationProvider: goRouter.routeInformationProvider,
        routeInformationParser: goRouter.routeInformationParser,
        routerDelegate: goRouter.routerDelegate,
      ),
    );
    await widgetTester.pumpAndSettle();
    goRouter = container.read(routerProvider);
    print(goRouter.location);
  });
  // });
}
