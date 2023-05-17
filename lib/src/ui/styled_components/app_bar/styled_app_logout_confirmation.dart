// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../src.dart';

Future<bool> styledAppLogoutConfirmation(BuildContext context) async {
  final labels = LocaleUtil().getLabels(context);

  bool shouldLogout = false;

  showDialog<bool>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final theme = Theme.of(context);
          return AlertDialog(
            title: Text(labels.authLogout),
            content: Text(labels.authLogoutDialog),
            actions: <Widget>[
              StyledCancelButton(onPressed: () {
                shouldLogout = false;
                Navigator.of(context).pop();
              }),
              StyledSecondaryTextButton(
                labels.authLogout,
                buttonColor: theme.colorScheme.error,
                textColor: theme.colorScheme.onError,
                onPressed: () async {
                  shouldLogout = true;

                  /// notify login state that we will be logging out
                  await ref.read(loginProvider.notifier).logout();

                  /// navigate back to login screen
                  // context.goNamed(RouteNames.LOGIN);
                  const LoginRoute().go(context);
                },
              ),
            ],
          );
        },
      );
    },
  );

  return shouldLogout;
}
