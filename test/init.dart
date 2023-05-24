import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'ui/ui.dart';
import 'utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sharedPreferences();
  await appTheme();
}
