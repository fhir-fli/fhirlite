// Flutter imports:
import 'package:flutter/material.dart';

class RichSpanText extends TextSpan {
  RichSpanText(String data, BuildContext context, [TextStyle? style])
      : super(
            text: data, style: style ?? Theme.of(context).textTheme.titleLarge);
}
