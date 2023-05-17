import 'package:flutter/material.dart';

import '../src.dart';

ClientColorExtensions getColorExtension(BuildContext context) {
  final theme = Theme.of(context);
  return theme.extension<ClientColorExtensions>() ??
      defaultColorExtension(theme.brightness);
}
