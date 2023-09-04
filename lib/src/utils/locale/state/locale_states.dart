// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

// Project imports:

part 'locale_states.freezed.dart';

@freezed
class LocaleStates with _$LocaleStates {
  const factory LocaleStates({
    Locale? selectedLocale,
    required Locale? deviceLocale,
  }) = _LocaleStates;

  factory LocaleStates.initial() {
    // TODO(FireJuun): if we want to set initial locale, we can do that here
    return LocaleStates(
      deviceLocale: _getDeviceLocale(),
    );
  }
}

Locale? _getDeviceLocale() {
  final currentLocaleString = Intl.getCurrentLocale();
  return currentLocaleString.isNotEmpty ? Locale(currentLocaleString) : null;
}
