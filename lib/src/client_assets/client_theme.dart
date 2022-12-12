import 'package:flutter/material.dart';
import 'package:json_theme/json_theme.dart';

import 'client_assets.dart';

class ClientTheme {
  ClientTheme({
    this.colorSchemeDark,
    this.colorSchemeLight,
    this.textTheme,
  });

  factory ClientTheme.fromJson(Map<String, dynamic> json) => ClientTheme(
        colorSchemeDark: json['clientColorSchemeDark'] == null
            ? null
            : ThemeDecoder.decodeColorScheme(json['clientColorSchemeDark']),
        colorSchemeLight: json['clientColorSchemeLight'] == null
            ? null
            : ThemeDecoder.decodeColorScheme(json['clientColorSchemeLight']),
        textTheme: (json['textTheme'] == null
                ? standardTextTheme
                : ThemeDecoder.decodeTextTheme(json['textTheme']))
            ?.apply(fontFamily: json['textThemeStyle']),
      );

  Map<String, dynamic> toJson() => {
        'clientColorSchemeDark':
            ThemeEncoder.encodeColorScheme(colorSchemeDark),
        'clientColorSchemeLight':
            ThemeEncoder.encodeColorScheme(colorSchemeLight),
        'textThemeStyle': textTheme?.titleMedium?.fontFamily,
        'textTheme': ThemeEncoder.encodeTextTheme(textTheme),
      };

  ColorScheme? colorSchemeDark;
  ColorScheme? colorSchemeLight;
  TextTheme? textTheme;
}
