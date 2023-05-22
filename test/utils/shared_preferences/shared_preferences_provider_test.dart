import 'package:fhirlite/src/utils/shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSPInteraction extends Mock implements SPInteraction {}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  group('Shared Preferences Provider', () {
    final container = ProviderContainer();
    test('Int Set', () async {
      final setIntProvider = container.read(
          sharedPrefProvider(SPInteraction.setInt(key: 'int1', value: 1))
              .future);
      expect(await setIntProvider,
          SPInteraction.setInt(key: 'int1', value: 1, success: true));
    });
    test('Int Get', () async {
      final getIntProvider = container
          .read(sharedPrefProvider(SPInteraction.getInt(key: 'int1')).future);
      expect(await getIntProvider,
          SPInteraction.getInt(key: 'int1', value: 1, success: true));
    });
    test('Bool Set', () async {
      final setBoolProvider = container.read(
          sharedPrefProvider(SPInteraction.setBool(key: 'bool1', value: true))
              .future);
      expect(await setBoolProvider,
          SPInteraction.setBool(key: 'bool1', value: true, success: true));
    });
    test('Bool get', () async {
      final getBoolProvider = container
          .read(sharedPrefProvider(SPInteraction.getBool(key: 'bool1')).future);
      expect(await getBoolProvider,
          SPInteraction.getBool(key: 'bool1', value: true, success: true));
    });
    test('Double Set', () async {
      final setDoubleProvider = container.read(sharedPrefProvider(
              SPInteraction.setDouble(key: 'double1', value: 3.3))
          .future);
      expect(await setDoubleProvider,
          SPInteraction.setDouble(key: 'double1', value: 3.3, success: true));
    });
    test('Double get', () async {
      final getDoubleProvider = container.read(
          sharedPrefProvider(SPInteraction.getDouble(key: 'double1')).future);
      expect(await getDoubleProvider,
          SPInteraction.getDouble(key: 'double1', value: 3.3, success: true));
    });

    test('String Set', () async {
      final setStringProvider = container.read(sharedPrefProvider(
              SPInteraction.setString(key: 'string1', value: 'String1'))
          .future);
      expect(
          await setStringProvider,
          SPInteraction.setString(
              key: 'string1', value: 'String1', success: true));
    });
    test('String get', () async {
      final getStringProvide = container.read(
          sharedPrefProvider(SPInteraction.getString(key: 'string1')).future);
      expect(
          await getStringProvide,
          SPInteraction.getString(
              key: 'string1', value: 'String1', success: true));
    });
    test('StringList set', () async {
      final setStringListProvider = container.read(sharedPrefProvider(
          SPInteraction.setStringList(
              key: 'stringlist1', value: ['String1', 'String2'])).future);
      expect(
          await setStringListProvider,
          SPInteraction.setStringList(
              key: 'stringlist1',
              value: ['String1', 'String2'],
              success: true));
    });
    test('StringList get', () async {
      final getStringListProvider = container.read(
          sharedPrefProvider(SPInteraction.getStringList(key: 'stringlist1'))
              .future);
      expect(
          await getStringListProvider,
          SPInteraction.getStringList(
              key: 'stringlist1',
              value: ['String1', 'String2'],
              success: true));
    });
  });
}
