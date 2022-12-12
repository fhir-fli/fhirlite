// Flutter imports:
import 'package:flutter/material.dart';

bool isPortrait(BuildContext context) =>
    MediaQuery.of(context).orientation == Orientation.portrait;
