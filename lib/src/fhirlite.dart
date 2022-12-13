import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../fhirlite.dart';

Widget fhirLite(String configFilePath) =>
    ProviderScope(child: InitView(configFilePath));
