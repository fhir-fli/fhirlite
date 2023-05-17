import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

import 'client_color_extensions.dart';

const Color mayJuunPrimarySeedColor = Color(0xFF6CBB74);
const Color mayJuunSecondarySeedColor = Color(0xFFE6D039);
const Color mayJuunTertiarySeedColor = Color(0xFFB982FF);
const Color _mayJuunPrimaryContainerLight = Color(0xFFBCE1BD);
const Color _mayJuunPrimaryContainerDark = Color(0xFF163923);

const Color _mayJuunNotificationLight = Color(0xFFFEAD77);
const Color _mayJuunOnNotificationLight = Color(0xFF1E1E1E);
const Color _mayJuunNotificationDark = Color(0xFFA06607);
const Color _mayJuunOnNotificationDark = Color(0xFF1E1E1E);

FlexTones defaultFlexTone(Brightness brightness) =>
    FlexTones.vividSurfaces(brightness);

ColorScheme defaultColorSchemeFromSeed(Brightness brightness) =>
    SeedColorScheme.fromSeeds(
      brightness: brightness,
      primaryKey: mayJuunPrimarySeedColor,
      secondaryKey: mayJuunSecondarySeedColor,
      tertiaryKey: mayJuunTertiarySeedColor,
      // errorKey: errorKey,
      // neutralKey: neutralKey,
      // neutralVariantKey: neutralVariantKey,
      // TODO(FireJuun): add FlexTones support/customization
      // TODO(FireJuun): add ability to set individual colors?
      tones: defaultFlexTone(brightness),

      /// Custom overrides, for better consistency in the theme
      primaryContainer: brightness == Brightness.dark
          ? _mayJuunPrimaryContainerDark
          : _mayJuunPrimaryContainerLight,
    );

ColorScheme defaultColorScheme(Brightness brightness) =>
    defaultColorSchemeFromSeed(brightness);

ClientColorExtensions defaultColorExtension(Brightness brightness) =>
    brightness == Brightness.dark
        ? _kMayJuunDarkModeExtension
        : _kMayJuunLightModeExtension;

/// Light mode default color extensions
const _kMayJuunLightModeExtension = ClientColorExtensions(
  notification: _mayJuunNotificationLight,
  onNotification: _mayJuunOnNotificationLight,
);

/// Dark mode default color extensions
const _kMayJuunDarkModeExtension = ClientColorExtensions(
  notification: _mayJuunNotificationDark,
  onNotification: _mayJuunOnNotificationDark,
);
