// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../src.dart';

class StyledCancelButton extends ConsumerWidget {
  const StyledCancelButton({
    Key? key,
    this.label,
    required this.onPressed,
  }) : super(key: key);

  final String? label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final labels = LocaleUtil().getLabels(context);

    return Theme(
        data: Theme.of(context).copyWith(
            textButtonTheme: TextButtonThemeData(
          style: theme.textButtonTheme.style!.copyWith(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            foregroundColor: MaterialStateProperty.all<Color>(
              theme.colorScheme.onSurface,
            ),
            side: MaterialStatePropertyAll<BorderSide?>(
                BorderSide(width: 1, color: theme.colorScheme.outline)),
          ),
        )),
        child: TextButton(
          child: Text(label ?? labels.navCancel, textAlign: TextAlign.center),
          onPressed: onPressed,
        ));
  }
}
