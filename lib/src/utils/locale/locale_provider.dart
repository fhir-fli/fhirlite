// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'events/locale_events.dart';
import 'failures/locale_failures.dart';
import 'state/locale_states.dart';

final localeProvider =
    StateNotifierProvider<LocaleStateController, LocaleStates>((ref) {
  return LocaleStateController();
});

class LocaleStateController extends StateNotifier<LocaleStates> {
  LocaleStateController() : super(LocaleStates.initial());

  Future<bool> mapEventsToStates(LocaleEvents events) async => events.map(
        setLocale: (value) async {
          if (value.newLocale != null) {
            // only set this if the new locale is supported
            if (AppLocalizations.supportedLocales.contains(value.newLocale)) {
              state = state.copyWith(
                selectedLocale: value.newLocale,
                deviceLocale: _getDeviceLocale(),
              );
            } else {
              throw const LocaleFailures.notSupportedError();
            }
          } else {
            // reset locale back to null...which should reload
            state = state.copyWith(
              selectedLocale: value.newLocale,
              deviceLocale: _getDeviceLocale(),
            );
          }
          return true;
        },
      );
}

Locale? _getDeviceLocale() {
  final currentLocaleString = Intl.getCurrentLocale();
  return currentLocaleString.isNotEmpty ? Locale(currentLocaleString) : null;
}
