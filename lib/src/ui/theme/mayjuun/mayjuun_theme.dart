// ignore_for_file: avoid_classes_with_only_static_members

// Flutter imports:
import 'package:flutter/material.dart';

import 'mayjuun.dart';

abstract class MayJuunTheme {
  static ThemeData get theme => ThemeData(
      textTheme: MayJuunTextTheme.getTextTheme(),
      colorScheme: const MayJuunColorScheme.light());

  static ThemeData fromType({ThemeMode? themeMode, TextTheme? textTheme}) =>
      ThemeData(
          textTheme: textTheme ?? MayJuunTextTheme.getTextTheme(),
          colorScheme: themeMode == ThemeMode.dark
              ? const MayJuunColorScheme.dark()
              : const MayJuunColorScheme.light());
}
