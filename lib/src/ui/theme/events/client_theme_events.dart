// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
part 'client_theme_events.freezed.dart';

@freezed
class ClientThemeEvents with _$ClientThemeEvents {
  const factory ClientThemeEvents.themeModeChanged(
      {required ThemeMode themeMode}) = ClientThemeModeChanged;
  const factory ClientThemeEvents.loadLastTheme() = ClientLoadLastTheme;
  const factory ClientThemeEvents.setFirstLoadInfo(
      [@Default(true) bool firstLoad]) = ClientSetFirstLoadInfo;
  const factory ClientThemeEvents.getPackageInfo() = ClientPackageInfo;
}
