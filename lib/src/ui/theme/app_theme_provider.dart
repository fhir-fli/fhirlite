// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../src.dart';

part 'app_theme_provider.g.dart';

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ClientThemeState build() => ClientThemeState.initial();

  Future<bool> mapEventsToStates(ClientThemeEvents events) async => events.map(
        /// To change the current theme mode
        themeModeChanged: (value) async {
          /// We save it using the sharedPrefProvider
          await ref.watch(sharedPrefProvider(SPInteraction.setString(
            key: 'theme',
            value: ThemeModeUtil().convertThemeModeToString(value.themeMode),
          )).selectAsync((data) => data));

          /// Then set the theme
          _getNewThemeAndSaveState(value.themeMode);

          return true;
        },

        /// To load the last theme from sharedPreferences
        loadLastTheme: (value) async {
          ///Read the data from sharedPreferences
          final data = await ref.watch(
              sharedPrefProvider(SPInteraction.getString(key: 'theme'))
                  .selectAsync((data) => data));

          /// extract the themeString from the theme
          final themeString = (data as SPInteractionGetString).value;
          // if success, then set theme mode to the new string. all failures default to system
          final newThemeMode = themeString == null
              ? ThemeMode.system
              : _getThemeModeFromString(themeString);

          /// set the theme
          _getNewThemeAndSaveState(newThemeMode);

          return true;
        },

        /// first load info
        setFirstLoadInfo: (ClientSetFirstLoadInfo value) async {
          /// request data from sharedProvider
          final data = await ref.watch(sharedPrefProvider(SPInteraction.setBool(
                  key: 'isFirstLoad', value: value.firstLoad))
              .selectAsync((data) => data));

          // trigger a state change
          state =
              state.copyWith(isFirstLoad: (data as SPInteractionSetBool).value);
          return true;
        },

        /// for package info
        getPackageInfo: (ClientPackageInfo value) async {
          /// use PackageInfo to get it
          final packageInfo = await PackageInfo.fromPlatform();

          /// update the state to include the information
          state = state.copyWith(versionNumber: packageInfo.version);
          return true;
        },
      );

  void _getNewThemeAndSaveState(ThemeMode newThemeMode) =>
      state = state.copyWith(
        data: _getNewClientTheme(newThemeMode),
        themeMode: newThemeMode,
      );

  ThemeMode _getThemeModeFromString(String theme) {
    ThemeMode setThemeMode = ThemeMode.system;
    if (theme == 'light') {
      setThemeMode = ThemeMode.light;
    }
    if (theme == 'dark') {
      setThemeMode = ThemeMode.dark;
    }
    return setThemeMode;
  }

  ThemeData _getNewClientTheme(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.system:
        return _isSystemPlatformDarkMode()
            ? ClientTheme.fromType(themeMode: ThemeMode.dark)
            : ClientTheme.fromType(themeMode: ThemeMode.light);

      case ThemeMode.light:
        return ClientTheme.fromType(themeMode: ThemeMode.light);

      case ThemeMode.dark:
        return ClientTheme.fromType(themeMode: ThemeMode.dark);
    }
  }

  bool _isSystemPlatformDarkMode() =>
      WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
}
