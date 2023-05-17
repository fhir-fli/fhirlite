// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../src.dart';

// Project imports:
part 'client_theme_state.freezed.dart';

@freezed
class ClientThemeState with _$ClientThemeState {
  factory ClientThemeState({
    /// Data specifc to the theme
    required ThemeData data,

    /// Though it is also possible to find this within [data], having them easily accessible is preferred
    /// These values need to be set manually each time state is refreshed, however
    /// Instead of setting defaults, we are making them required to remind you to set them each time
    required ThemeMode themeMode,

    /// Version number, only shown during dev / stage instances of the app
    @Default('') String versionNumber,

    /// Should trigger only if the app is loaded for the first time
    @Default(true) bool isFirstLoad,

    /// Deprecated variable to decide if the buttons should take more/less horizontal space
    @Default(false) bool isWideMode,
  }) = _ClientThemeState;

  factory ClientThemeState.initial() => ClientThemeState(
        data: ClientTheme.fromType(
            themeMode: ThemeMode.light,
            textTheme:
                MayJuunTextTheme.applyBarlow(MayJuunTextTheme.getTextTheme())),
        // MayJuunColorScheme.light(), //.clientColorSchemeLight,
        themeMode: ThemeMode.light,
      );
}
