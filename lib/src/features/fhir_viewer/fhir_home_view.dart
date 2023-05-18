import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';

class FhirHomeView extends HookConsumerWidget {
  const FhirHomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                opacity: 0.04,
                image: AssetImage('assets/images/fhir-fli-logo.png'),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  StyledOvalButton(
                    percentHeight: .3,
                    label: 'Upload Random',
                    onPressed: () {
                      final result = ref.read(
                          atSignUpdateFhirResourceProvider(generatePatient()));
                      print(result);
                    },
                  ),
                  StyledOvalButton(
                    percentHeight: .3,
                    label: 'Download All',
                    onPressed: () async {
                      ref.read(atSignGetAllFhirResourcesProvider).when(
                            data: (data) {
                              for (final Resource resource in data) {
                                print(resource.toJson());
                              }
                            },
                            error: (e, s) {},
                            loading: () {},
                          );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
