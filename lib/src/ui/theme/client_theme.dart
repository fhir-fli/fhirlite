// ignore_for_file: avoid_classes_with_only_static_members

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../src.dart';

@immutable
class ClientTheme {
  static ThemeData fromType({ThemeMode? themeMode, TextTheme? textTheme}) {
    final bool isDark = themeMode == ThemeMode.dark;
    final colorScheme =
        isDark ? clientAssets.colorSchemeDark : clientAssets.colorSchemeLight;
    final colorExtension = isDark
        ? clientAssets.colorExtensionsDark
        : clientAssets.colorExtensionsLight;

    return ThemeData.from(
      textTheme: textTheme ?? clientAssets.clientTextTheme,
      colorScheme: colorScheme,
      useMaterial3: true,
    ).copyWith(
      extensions: [colorExtension],
      appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.background,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: colorScheme.onBackground),
          titleTextStyle: clientAssets.clientTextTheme.headlineSmall!
              .apply(color: colorScheme.onBackground),
          systemOverlayStyle:
              isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark),
      brightness: isDark ? Brightness.dark : Brightness.light,
      typography: Typography.material2018(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.primary,
        selectionColor: colorScheme.outline,
        selectionHandleColor: colorScheme.primaryContainer,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: colorScheme.onSecondaryContainer,
        backgroundColor: colorScheme.secondaryContainer,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.any(activeStates.contains)) {
              return colorScheme.secondary;
            }
            return null;
          },
        ),
        trackColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.any(activeStates.contains)) {
              return (colorScheme.secondary).withAlpha(100);
            }
            // disabled state = grey
            else if (states.any((test) => test == MaterialState.disabled)) {
              return colorScheme.outline;
            }
            return null;
          },
        ),
      ),
      // cardTheme: CardTheme(),
      // expansionTileTheme: ,
      dividerTheme: DividerThemeData(
        color: colorScheme.outline,
      ),
      scrollbarTheme: ScrollbarThemeData(
        interactive: true,
        thumbVisibility: MaterialStateProperty.all(true),
        trackVisibility: MaterialStateProperty.all(true),
        thickness: MaterialStateProperty.all(12),
        thumbColor: MaterialStateProperty.all(colorScheme.outline),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.outlineVariant,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.any(activeStates.contains)) {
              return colorScheme.tertiary;
            }
            // disabled state = grey
            // else if (states.any((test) => test == MaterialState.disabled)) {
            //   return grey;
            // }
            return null;
          },
        ),
      ),
      // cardColor: Colors.pink,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.any(activeStates.contains)) {
              return colorScheme.tertiary;
            }
            // disabled state = grey
            // else if (states.any((test) => test == MaterialState.disabled)) {
            //   return grey;
            // }
            return null;
          },
        ),
      ),
      sliderTheme: SliderThemeData.fromPrimaryColors(
          primaryColor: colorScheme.secondary,
          primaryColorDark: colorScheme.secondary,
          primaryColorLight: colorScheme.outline,
          valueIndicatorTextStyle: clientAssets.clientTextTheme.titleLarge!),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(8),
        fillColor: colorScheme.background,
        filled: true,
        border: const OutlineInputBorder(),
      ),

      // Typically a 'cancel' button, unless overridden
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          textStyle: MaterialStateProperty.all<TextStyle>(
              clientAssets.clientTextTheme.titleLarge!),
          overlayColor: MaterialStateProperty.all<Color>(colorScheme.onError),
          foregroundColor: MaterialStateProperty.all<Color>(colorScheme.error),
          backgroundColor:
              MaterialStateProperty.all<Color>(colorScheme.background),
        ),
      ),

      // Typical button, unless overridden
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          textStyle: MaterialStateProperty.all<TextStyle>(
              clientAssets.clientTextTheme.titleLarge!),
          foregroundColor:
              MaterialStateProperty.all<Color>(colorScheme.onPrimary),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.any(interactiveStates.contains)) {
                return colorScheme.secondary;
              }
              // disabled state = grey
              else if (states.any((state) => state == MaterialState.disabled)) {
                return colorScheme.outline;
              }
              return colorScheme.primary;
            },
          ),
        ),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: colorScheme.primary,
        shape: const CircularNotchedRectangle(),
      ),
      highlightColor: colorScheme.secondary,
    );
  }
}

// spec: https://api.flutter.dev/flutter/material/MaterialStateProperty-class.html
const Set<MaterialState> interactiveStates = <MaterialState>{
  MaterialState.pressed,
  MaterialState.hovered,
  MaterialState.focused,
};

const Set<MaterialState> activeStates = <MaterialState>{
  MaterialState.selected,
};
