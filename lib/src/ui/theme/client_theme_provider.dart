// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../src.dart';

final clientThemeProvider =
    StateNotifierProvider<ClientThemeStateNotifier, ClientThemeState>(
        (ref) => ClientThemeStateNotifier(ref));

class ClientThemeStateNotifier extends StateNotifier<ClientThemeState> {
  /// ***************************************************
  /// Constructor
  /// ***************************************************
  ClientThemeStateNotifier(this.ref) : super(ClientThemeState.initial());

  /// ***************************************************
  /// PROPERTIES
  /// ***************************************************
  final Ref ref;

  Future<bool> mapEventsToStates(ClientThemeEvents events) async => events.map(
        themeModeChanged: (value) async {
          await ref.watch(sharedPreferencesProvider(SPInteraction.setString(
            key: 'theme',
            value: ThemeModeUtil().convertThemeModeToString(value.themeMode),
          )).selectAsync((data) => data));

          _getNewThemeAndSaveState(value.themeMode);

          return true;
        },
        loadLastTheme: (value) async {
          final data = await ref.watch(
              sharedPreferencesProvider(SPInteraction.getString(key: 'theme'))
                  .selectAsync((data) => data));

          final themeString = (data as SPInteractionGetString).value;
          // if success, then set theme mode to the new string. all failures default to system
          final newThemeMode = themeString == null
              ? ThemeMode.system
              : _getThemeModeFromString(themeString);

          _getNewThemeAndSaveState(newThemeMode);

          return true;
        },
        setFirstLoadInfo: (ClientSetFirstLoadInfo value) async {
          final data = await ref.watch(sharedPreferencesProvider(
                  SPInteraction.setBool(
                      key: 'isFirstLoad', value: value.firstLoad))
              .selectAsync((data) => data));

          // trigger a state change
          state =
              state.copyWith(isFirstLoad: (data as SPInteractionSetBool).value);
          return true;
        },
        getPackageInfo: (ClientPackageInfo value) async {
          final packageInfo = await PackageInfo.fromPlatform();
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
