// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StyledSecondaryTextButton extends ConsumerWidget {
  const StyledSecondaryTextButton(
    this.data, {
    Key? key,
    required this.onPressed,
    this.useOutlineOverride = false,
    this.buttonColor,
    this.textColor,
  }) : super(key: key);

  final String data;
  final VoidCallback? onPressed;
  final bool useOutlineOverride;
  final Color? buttonColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final bgColor = buttonColor ?? theme.colorScheme.secondary;
    final fgColor = textColor ?? theme.colorScheme.onSecondary;

    return Theme(
        data: Theme.of(context).copyWith(
          textButtonTheme: TextButtonThemeData(
              style: Theme.of(context).textButtonTheme.style!.copyWith(
                    backgroundColor: MaterialStateProperty.all<Color>(bgColor),
                    foregroundColor: MaterialStateProperty.all<Color>(fgColor),
                  )),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                    foregroundColor: MaterialStateProperty.all<Color>(
                      textColor ?? theme.colorScheme.onErrorContainer,
                    ),
                  )),
        ),
        child: (onPressed == null || useOutlineOverride)
            ? OutlinedButton(
                child: Text(data, textAlign: TextAlign.center),
                onPressed: onPressed,
              )
            : TextButton(
                child: Text(data, textAlign: TextAlign.center),
                onPressed: onPressed));
  }
}
