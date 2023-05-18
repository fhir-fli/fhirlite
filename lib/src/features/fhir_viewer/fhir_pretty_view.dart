import 'dart:convert';

import 'package:fhirlite/src/utils/json_pretty_print.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';

class FhirPrettyView extends HookConsumerWidget {
  const FhirPrettyView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(fhirResourcesProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: SingleChildScrollView(
              child: Text(
                prettyPrintJson(jsonDecode(ref.watch(fhirStringProvider))),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const FhirListRoute().go(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
