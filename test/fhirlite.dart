import 'package:fhirlite/src/src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const jsonFilePath = 'assets/assets.json';

Future<void> fhirliteTest(WidgetTester tester) async {
  await tester
      .pumpWidget(const ProviderScope(child: FhirLiteView(jsonFilePath)));
  final materialApp = find.byElementType(MaterialApp);
  await tester.pumpAndSettle();
  expect(materialApp, findsOneWidget);
}
