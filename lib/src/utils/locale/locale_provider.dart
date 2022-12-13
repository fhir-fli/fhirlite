// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'locale.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleState extends _$LocaleState {
  @override
  LocaleStates build() => LocaleStates.initial();

  Future<bool> mapEventsToStates(LocaleEvents events) async => events.map(
        setLocale: (value) async {
          if (value.newLocale != null) {
            // only set this if the new locale is supported
            if (AppLocalizations.supportedLocales.contains(value.newLocale)) {
              state = state.copyWith(
                selectedLocale: value.newLocale,
                deviceLocale: getDeviceLocale(),
              );
            } else {
              throw const LocaleFailures.notSupportedError();
            }
          } else {
            // reset locale back to null...which should reload
            state = state.copyWith(
              selectedLocale: value.newLocale,
              deviceLocale: getDeviceLocale(),
            );
          }
          return true;
        },
      );
}
