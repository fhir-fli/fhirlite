import 'package:fhirlite/src/branding/client_assets.dart';
import 'package:fhirlite/src/ui/theme/app_theme_provider.dart';
import 'package:fhirlite/src/ui/theme/events/client_theme_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'test_config_assets.dart';

GetIt getIt = GetIt.instance;

Future<void> appTheme() async {
  SharedPreferences.setMockInitialValues({});
  getIt.registerSingleton<ClientAssets>(ClientAssets.fromJson(
      testConfigAssets, GlobalKey<ScaffoldMessengerState>()));
  group('App Theme Provider', () {
    final container = ProviderContainer();
    var themeProvider = container.read(appThemeProvider);
    test('Initial ThemeMode', () {
      expect(themeProvider.themeMode, ThemeMode.light);
    });
    test('Initial TextTheme', () {
      expect(
          themeProvider.data.textTheme.bodyLarge?.fontFamily, 'Barlow_regular');
    });
    test('Is First Load True', () {
      expect(themeProvider.isFirstLoad, true);
    });
    test('Set Is First Load False', () async {
      final mapped = await container
          .read(appThemeProvider.notifier)
          .mapEventsToStates(const ClientThemeEvents.setFirstLoadInfo(false));
      expect(mapped, true);
      themeProvider = container.read(appThemeProvider);
      expect(themeProvider.isFirstLoad, false);
    });
  });
}
