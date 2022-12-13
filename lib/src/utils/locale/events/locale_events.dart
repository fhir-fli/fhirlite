// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_events.freezed.dart';

@freezed
class LocaleEvents with _$LocaleEvents {
  const factory LocaleEvents.setLocale({required Locale? newLocale}) =
      SetLocale;

  // todo: create method to locally store/load locale info
}
