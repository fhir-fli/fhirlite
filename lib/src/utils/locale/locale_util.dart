// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocaleUtil {
  AppLocalizations getLabels(BuildContext context) =>
      AppLocalizations.of(context)!;

  String? getLocaleName(BuildContext context) =>
      AppLocalizations.of(context)?.localeName;

  List<Locale> getSupportedLocales() => AppLocalizations.supportedLocales;
}
