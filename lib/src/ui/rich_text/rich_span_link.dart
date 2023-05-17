// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../src.dart';

class RichSpanLink extends TextSpan {
  RichSpanLink(String data, String url, BuildContext context,
      [TextStyle? style])
      : super(
          text: data,
          style: style ??
              Theme.of(context).textTheme.titleLarge?.apply(
                    color: Theme.of(context).colorScheme.secondary,
                    decoration: TextDecoration.underline,
                  ),
          recognizer: TapGestureRecognizer()
            ..onTap = () async => await launchUrl(url),
        );
}
