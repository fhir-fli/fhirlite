// ignore_for_file: avoid_classes_with_only_static_members

// Dart imports:
import 'dart:ui';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../src.dart';

abstract class MayJuunTextTheme {
  static const FontWeight displayWeight = FontWeight.w400;
  static const FontWeight labelWeight = FontWeight.w400;
  static const FontWeight paragraphWeight = FontWeight.w300;

  static TextTheme getTextTheme({
    TextStyle? displayLargeStyle,
    TextStyle? displayMediumStyle,
    TextStyle? displaySmallStyle,
    TextStyle? headlineLargeStyle,
    TextStyle? headlineMediumStyle,
    TextStyle? headlineSmallStyle,
    TextStyle? titleLargeStyle,
    TextStyle? titleMediumStyle,
    TextStyle? titleSmallStyle,
    TextStyle? bodyLargeStyle,
    TextStyle? bodyMediumStyle,
    TextStyle? bodySmallStyle,
    TextStyle? labelLargeStyle,
    TextStyle? labelMediumStyle,
    TextStyle? labelSmallStyle,
    TextStyle Function(
            {Paint? background,
            Color? backgroundColor,
            Color? color,
            TextDecoration? decoration,
            Color? decorationColor,
            TextDecorationStyle? decorationStyle,
            double? decorationThickness,
            List<FontFeature>? fontFeatures,
            double? fontSize,
            FontStyle? fontStyle,
            FontWeight? fontWeight,
            Paint? foreground,
            double? height,
            double? letterSpacing,
            Locale? locale,
            List<Shadow>? shadows,
            TextBaseline? textBaseline,
            TextStyle? textStyle,
            double? wordSpacing})?
        globalStyle,
  }) =>
      TextTheme(
        displayLarge: globalStyle == null
            ? displayLargeStyle ?? displayLarge()
            : globalStyle(textStyle: displayLargeStyle ?? displayLarge()),
        displayMedium: globalStyle == null
            ? displayMediumStyle ?? displayMedium()
            : globalStyle(textStyle: displayMediumStyle ?? displayMedium()),
        displaySmall: globalStyle == null
            ? displaySmallStyle ?? displaySmall()
            : globalStyle(textStyle: displaySmallStyle ?? displaySmall()),
        headlineLarge: globalStyle == null
            ? headlineLargeStyle ?? headlineLarge()
            : globalStyle(textStyle: headlineLargeStyle ?? headlineLarge()),
        headlineMedium: globalStyle == null
            ? headlineMediumStyle ?? headlineMedium()
            : globalStyle(textStyle: headlineMediumStyle ?? headlineMedium()),
        headlineSmall: globalStyle == null
            ? headlineSmallStyle ?? headlineSmall()
            : globalStyle(textStyle: headlineSmallStyle ?? headlineSmall()),
        bodyLarge: globalStyle == null
            ? bodyLargeStyle ?? bodyLarge()
            : globalStyle(textStyle: bodyLargeStyle ?? bodyLarge()),
        bodyMedium: globalStyle == null
            ? bodyMediumStyle ?? bodyMedium()
            : globalStyle(textStyle: bodyMediumStyle ?? bodyMedium()),
        bodySmall: globalStyle == null
            ? bodySmallStyle ?? bodySmall()
            : globalStyle(textStyle: bodySmallStyle ?? bodySmall()),
        labelLarge: globalStyle == null
            ? labelLargeStyle ?? labelLarge()
            : globalStyle(textStyle: labelLargeStyle ?? labelLarge()),
        labelMedium: globalStyle == null
            ? labelMediumStyle ?? labelMedium()
            : globalStyle(textStyle: labelMediumStyle ?? labelMedium()),
        labelSmall: globalStyle == null
            ? labelSmallStyle ?? labelSmall()
            : globalStyle(textStyle: labelSmallStyle ?? labelSmall()),
      );

  static TextTheme applyGlobalStyle({
    ThemeMode? themeMode,
    required TextStyle Function(
            {Paint? background,
            Color? backgroundColor,
            Color? color,
            TextDecoration? decoration,
            Color? decorationColor,
            TextDecorationStyle? decorationStyle,
            double? decorationThickness,
            List<FontFeature>? fontFeatures,
            double? fontSize,
            FontStyle? fontStyle,
            FontWeight? fontWeight,
            Paint? foreground,
            double? height,
            double? letterSpacing,
            Locale? locale,
            List<Shadow>? shadows,
            TextBaseline? textBaseline,
            TextStyle? textStyle,
            double? wordSpacing})
        globalStyle,
    TextTheme? theme,
  }) =>
      getTextTheme(
          displayLargeStyle: theme?.displayLarge,
          displayMediumStyle: theme?.displayMedium,
          displaySmallStyle: theme?.displaySmall,
          headlineLargeStyle: theme?.headlineLarge,
          headlineMediumStyle: theme?.headlineMedium,
          headlineSmallStyle: theme?.headlineSmall,
          titleLargeStyle: theme?.titleLarge,
          titleMediumStyle: theme?.titleMedium,
          titleSmallStyle: theme?.titleSmall,
          bodyLargeStyle: theme?.bodyLarge,
          bodyMediumStyle: theme?.bodyMedium,
          bodySmallStyle: theme?.bodySmall,
          labelLargeStyle: theme?.labelLarge,
          labelMediumStyle: theme?.labelMedium,
          labelSmallStyle: theme?.labelSmall,
          globalStyle: globalStyle);

  static TextTheme applyOpenSans([TextTheme? theme]) =>
      (theme ?? getTextTheme()).apply(fontFamily: 'Open Sans');

  static TextTheme applyBarlow([TextTheme? theme]) =>
      applyGlobalStyle(globalStyle: GoogleFonts.barlow, theme: theme);

  static TextStyle getTextStyle({
    required double fontSize,
    Color? color,
    String? fontFamily,
    FontWeight? fontWeight,
  }) =>
      fontFamily != null
          ? GoogleFonts.getFont(fontFamily).copyWith(
              fontSize: fontSize,
              color: color ?? const MayJuunColorScheme.light().primary,
              fontWeight: fontWeight)
          : TextStyle(
              fontSize: fontSize,
              color: color ?? const MayJuunColorScheme.light().primary,
              fontFamily: fontFamily ?? 'Inter-Variable',
              fontWeight: fontWeight);

  /// ******************************************
  ///DISPLAY
  /// ******************************************
  static TextStyle displayLarge({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 72) : 72,
        fontWeight: fontWeight ?? displayWeight,
        fontFamily: fontFamily,
      );
  static TextStyle displayMedium({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 50) : 50,
        fontWeight: fontWeight ?? displayWeight,
        fontFamily: fontFamily,
      );
  static TextStyle displaySmall({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 36) : 36,
        fontWeight: fontWeight ?? displayWeight,
        fontFamily: fontFamily,
      );

  /// ******************************************
  /// HEADLINE
  /// ******************************************
  static TextStyle headlineLarge({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 40) : 40,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      );
  static TextStyle headlineMedium({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 36) : 36,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      );
  static TextStyle headlineSmall({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 32) : 32,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      );

  /// ******************************************
  /// TITLE
  /// ******************************************
  static TextStyle titleLarge({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 28) : 28,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily,
      );
  static TextStyle titleMedium({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 24) : 24,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily,
      );
  static TextStyle titleSmall({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 20) : 20,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily,
      );

  /// ******************************************
  ///LABEL
  /// ******************************************
  static TextStyle labelLarge({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 18) : 18,
        fontWeight: fontWeight ?? labelWeight,
        fontFamily: fontFamily,
      );
  static TextStyle labelMedium({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 15) : 15,
        fontWeight: fontWeight ?? labelWeight,
        fontFamily: fontFamily,
      );
  static TextStyle labelSmall({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 12) : 12,
        fontWeight: fontWeight ?? labelWeight,
        fontFamily: fontFamily,
      );

  /// ******************************************
  /// BODY TEXT
  /// ******************************************
  static TextStyle bodyLarge({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 24) : 24,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily,
      );
  static TextStyle bodyMedium({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 18) : 18,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily,
      );
  static TextStyle bodySmall({
    BuildContext? context,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) =>
      getTextStyle(
        fontSize: context != null ? doubleBySize(context, 16) : 16,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily,
      );
}
