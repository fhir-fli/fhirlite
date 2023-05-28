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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StyledOvalButton(
                    percentHeight: 1,
                    heightMax: 150,
                    label: 'Upload Random',
                    onPressed: () async {
                      await atSignUpdateFhirResource(generatePatient());
                    },
                  ),
                  StyledOvalButton(
                    percentHeight: 1,
                    heightMax: 150,
                    label: 'Download All',
                    onPressed: () async {
                      final resultList = await atSignGetAllFhirResources();
                      print(resultList.length);
                      ref
                          .watch(fhirResourcesProvider.notifier)
                          .addResources(resultList);
                      if (context.mounted) {
                        const FhirListRoute().go(context);
                      }
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
