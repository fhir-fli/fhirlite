import 'package:at_fhir/at_fhir.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:fhir/r4.dart';
import 'package:fhir_at_rest/r4.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';

void listenFunction(AtClient atClient, AtNotification atNotification) {
  try {
    final AtFhirNotification atFhirNotification =
        AtFhirNotification.fromJsonString(atNotification.key
            .replaceFirst('${atClient.getCurrentAtSign()}:', ''));
  } catch (exception) {
    // TODO(Dokotela): what do to with this error
  }
}

class FhirHomeView extends HookConsumerWidget {
  FhirHomeView({super.key});

  final atClient = AtClientManager.getInstance().atClient;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    atFhirListen(atClient, listenFunction);
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
                    label: 'Make Request',
                    onPressed: () async {
                      final FhirRequest fhirRequest = FhirRequest.read(
                        base: Uri.parse('http://hapi.fhir.org/baseR4'),
                        type: R4ResourceType.Patient,
                        fhirId: '592269',
                      );
                      final result = await atFhirNotify(
                        atClient,
                        AtFhirNotification.r4Request(fhirRequest),
                        '@81xerothermic',
                      );
                      print(result.notificationStatusEnum);
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
