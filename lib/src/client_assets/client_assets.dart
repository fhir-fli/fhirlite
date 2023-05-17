import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';
import 'package:json_theme/json_theme.dart';

import 'client_apis.dart';
import 'client_color_defaults.dart';
import 'client_color_extensions.dart';
import 'client_links.dart';
import 'standard_text_theme.dart';

@immutable
class ClientAssets {
  const ClientAssets({
    required this.clientApis,
    required this.clientLinks,
    required this.colorSchemeDark,
    required this.colorSchemeLight,
    required this.colorExtensionsDark,
    required this.colorExtensionsLight,
    required this.clientTextTheme,
    required this.scaffoldKey,
  });

  factory ClientAssets.fromJson(
    Map<String, dynamic> json,
    GlobalKey<ScaffoldMessengerState> scaffoldKey,
  ) {
    final ClientApis clientApis = json['clientApis'];
    final Map<String, dynamic> textTheme = json['clientTextTheme'];
    final googleFont = textTheme.remove('googleFont');

    /// For now, we are only accepting light and dark mode color schemes
    final Map<String, dynamic> lightModeColorScheme =
        json['clientTheme']['colorScheme']['light'];
    final Map<String, dynamic> darkModeColorScheme =
        json['clientTheme']['colorScheme']['dark'];

    /// The app defaults to light or dark mode based on color schemes set above
    /// If, for some reason, you want to set a custom brightness for one of these modes, you can
    Brightness _getBrightnessFromJson(
        Map<String, dynamic> colorSchemeJson, Brightness nullBrightness) {
      final brightnessString = colorSchemeJson['brightness'];

      /// Check formatting
      if (brightnessString != null &&
          brightnessString is String &&
          brightnessString.isNotEmpty) {
        if (brightnessString == 'dark') {
          return Brightness.dark;
        }
        if (brightnessString == 'light') {
          return Brightness.light;
        }
      }
      return nullBrightness;
    }

    ColorScheme _getColorSchemeFromJson(
        Map<String, dynamic> colorSchemeJson, Brightness brightness) {
      final bool isFromSeed = colorSchemeJson['fromSeed'] ?? false;
      final bool includeOverrides =
          colorSchemeJson['fromSeedIncludesOverrides'] ?? false;

      /// Used to set a custom color scheme via a seed...
      if (isFromSeed) {
        final Color? primaryKey =
            ThemeDecoder.decodeColor(colorSchemeJson['primaryKey']);
        final secondaryKey =
            ThemeDecoder.decodeColor(colorSchemeJson['secondaryKey']);
        final tertiaryKey =
            ThemeDecoder.decodeColor(colorSchemeJson['tertiaryKey']);
        final errorKey = ThemeDecoder.decodeColor(colorSchemeJson['errorKey']);
        final neutralKey =
            ThemeDecoder.decodeColor(colorSchemeJson['neutralKey']);
        final neutralVariantKey =
            ThemeDecoder.decodeColor(colorSchemeJson['neutralVariantKey']);

        /// If fromSeed is true, but no primary color seed is listed...then use MayJuun seed colors instead
        if (primaryKey == null) {
          return defaultColorSchemeFromSeed(brightness);
        }

        /// Finally, return the seed color scheme...
        /// If overrides set, they will add to default see scheme
        return includeOverrides
            ? SeedColorScheme.fromSeeds(
                brightness: brightness,
                primaryKey: primaryKey,
                secondaryKey: secondaryKey,
                tertiaryKey: tertiaryKey,
                errorKey: errorKey,
                neutralKey: neutralKey,
                neutralVariantKey: neutralVariantKey,
                // TODO(FireJuun): add FlexTones support/customization
                tones: defaultFlexTone(brightness),
                primary: ThemeDecoder.decodeColor(colorSchemeJson['primary']),
                onPrimary:
                    ThemeDecoder.decodeColor(colorSchemeJson['onPrimary']),
                primaryContainer: ThemeDecoder.decodeColor(
                    colorSchemeJson['primaryContainer']),
                onPrimaryContainer: ThemeDecoder.decodeColor(
                    colorSchemeJson['onPrimaryContainer']),
                secondary:
                    ThemeDecoder.decodeColor(colorSchemeJson['secondary']),
                onSecondary:
                    ThemeDecoder.decodeColor(colorSchemeJson['onSecondary']),
                secondaryContainer: ThemeDecoder.decodeColor(
                    colorSchemeJson['secondaryContainer']),
                onSecondaryContainer: ThemeDecoder.decodeColor(
                    colorSchemeJson['onSecondaryContainer']),
                tertiary: ThemeDecoder.decodeColor(colorSchemeJson['tertiary']),
                onTertiary:
                    ThemeDecoder.decodeColor(colorSchemeJson['onTertiary']),
                tertiaryContainer: ThemeDecoder.decodeColor(
                    colorSchemeJson['tertiaryContainer']),
                onTertiaryContainer: ThemeDecoder.decodeColor(
                    colorSchemeJson['onTertiaryContainer']),
                error: ThemeDecoder.decodeColor(colorSchemeJson['error']),
                onError: ThemeDecoder.decodeColor(colorSchemeJson['onError']),
                errorContainer:
                    ThemeDecoder.decodeColor(colorSchemeJson['errorContainer']),
                onErrorContainer: ThemeDecoder.decodeColor(
                    colorSchemeJson['onErrorContainer']),
                background:
                    ThemeDecoder.decodeColor(colorSchemeJson['background']),
                onBackground:
                    ThemeDecoder.decodeColor(colorSchemeJson['onBackground']),
                surface: ThemeDecoder.decodeColor(colorSchemeJson['surface']),
                onSurface:
                    ThemeDecoder.decodeColor(colorSchemeJson['onSurface']),
                surfaceVariant:
                    ThemeDecoder.decodeColor(colorSchemeJson['surfaceVariant']),
                onSurfaceVariant: ThemeDecoder.decodeColor(
                    colorSchemeJson['onSurfaceVariant']),
                outline: ThemeDecoder.decodeColor(colorSchemeJson['outline']),
                outlineVariant:
                    ThemeDecoder.decodeColor(colorSchemeJson['outlineVariant']),
                shadow: ThemeDecoder.decodeColor(colorSchemeJson['shadow']),
                scrim: ThemeDecoder.decodeColor(colorSchemeJson['scrim']),
                inverseSurface:
                    ThemeDecoder.decodeColor(colorSchemeJson['inverseSurface']),
                onInverseSurface: ThemeDecoder.decodeColor(
                    colorSchemeJson['onInverseSurface']),
                inversePrimary:
                    ThemeDecoder.decodeColor(colorSchemeJson['inversePrimary']),
                surfaceTint:
                    ThemeDecoder.decodeColor(colorSchemeJson['surfaceTint']),
              )
            : SeedColorScheme.fromSeeds(
                brightness: brightness,
                primaryKey: primaryKey,
                secondaryKey: secondaryKey,
                tertiaryKey: tertiaryKey,
                errorKey: errorKey,
                neutralKey: neutralKey,
                neutralVariantKey: neutralVariantKey,
                // TODO(FireJuun): add FlexTones support/customization
                tones: defaultFlexTone(brightness),
              );
      }

      /// If fromSeed is false, define all colors at once (or default)
      return ThemeDecoder.decodeColorScheme(colorSchemeJson) ??
          defaultColorScheme(brightness);
    }

    ClientColorExtensions _getColorExtensionsFromJson(
            Map<String, dynamic> colorSchemeJson, Brightness brightness) =>
        ClientColorExtensions.fromJson(
            colorSchemeJson['extensions'], brightness);

    /// This allows you to set custom brightness in the JSON
    /// Color schemes and extensions are build from this data (or defaults if unset)
    final brightnessLight =
        _getBrightnessFromJson(lightModeColorScheme, Brightness.light);
    final colorSchemeLight =
        _getColorSchemeFromJson(lightModeColorScheme, brightnessLight);
    final colorExtensionsLight =
        _getColorExtensionsFromJson(lightModeColorScheme, brightnessLight);

    /// This allows you to set custom brightness in the JSON
    /// Color schemes and extensions are build from this data (or defaults if unset)
    final brightnessDark =
        _getBrightnessFromJson(darkModeColorScheme, Brightness.dark);
    final colorSchemeDark =
        _getColorSchemeFromJson(darkModeColorScheme, brightnessDark);
    final colorExtensionsDark =
        _getColorExtensionsFromJson(darkModeColorScheme, brightnessDark);

    return ClientAssets(
      clientApis: clientApis,
      colorSchemeLight: colorSchemeLight,
      colorSchemeDark: colorSchemeDark,
      colorExtensionsLight: colorExtensionsLight,
      colorExtensionsDark: colorExtensionsDark,
      clientTextTheme: (ThemeDecoder.decodeTextTheme(textTheme) ??
              ThemeDecoder.decodeTextTheme(standardTextTheme)!)
          .apply(fontFamily: googleFont),
      clientLinks:
          ClientLinks.fromJson(json['clientLinks'] as Map<String, dynamic>),
      scaffoldKey: scaffoldKey,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'clientApis': clientApis.toJson(),
      'clientLinks': clientLinks.toJson(),
      'clientTheme': {
        'colorScheme': {
          'light': {
            'extensions': {},
          },
          'dark': {
            'extensions': {},
          },
        },
        'textTheme': ThemeEncoder.encodeTextTheme(clientTextTheme),
      },
    };
  }

  final ClientApis clientApis;

  /// Custom theme settings
  final ColorScheme colorSchemeDark;
  final ColorScheme colorSchemeLight;

  final ClientColorExtensions colorExtensionsDark;
  final ClientColorExtensions colorExtensionsLight;

  final TextTheme clientTextTheme;

  /// Assets and unique titles
  final ClientLinks clientLinks;

  /// Scaffold Key! I've always wanted one of those!
  final GlobalKey<ScaffoldMessengerState> scaffoldKey;
}
