// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../locale.dart';

part 'locale_states.freezed.dart';

@freezed
class LocaleStates with _$LocaleStates {
  const factory LocaleStates({
    Locale? selectedLocale,
    required Locale? deviceLocale,
  }) = _LocaleStates;

  factory LocaleStates.initial() {
    // todo: if we want to set initial locale, we can do that here
    return LocaleStates(
      deviceLocale: getDeviceLocale(),
    );
  }
}
