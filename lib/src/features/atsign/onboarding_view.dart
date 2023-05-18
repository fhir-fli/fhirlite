import 'package:at_app_flutter/at_app_flutter.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'atsign.dart';

class OnBoardingView extends HookConsumerWidget {
  OnBoardingView({super.key});
  final Future<AtClientPreference> futurePreference = loadAtClientPreference();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      // * The onboarding screen (first screen)
      home: Scaffold(
        appBar: AppBar(
          title: Text(clientAssets.clientApis.clientAppTitle),
        ),
        body: Builder(
          builder: (context) => Center(
            child: ElevatedButton(
              onPressed: () async {
                AtOnboardingResult onboardingResult =
                    await AtOnboarding.onboard(
                  context: context,
                  config: AtOnboardingConfig(
                    atClientPreference: await futurePreference,
                    rootEnvironment: AtEnv.rootEnvironment,
                    domain: AtEnv.rootDomain,
                    appAPIKey: AtEnv.appApiKey,
                  ),
                );
                switch (onboardingResult.status) {
                  case AtOnboardingResultStatus.success:
                    {
                      if (context.mounted) {
                        AlertRoute(
                                'Successfully Onboarded ${onboardingResult.atsign}')
                            .go(context);
                      }
                    }
                    break;
                  case AtOnboardingResultStatus.error:
                    {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: ref
                                .read(clientThemeProvider)
                                .data
                                .colorScheme
                                .error,
                            content: Text(
                                'An error has occurred trying to onboard ${onboardingResult.atsign}:\n'
                                'ErrorCode: ${onboardingResult.errorCode}\n'
                                'Status: ${onboardingResult.status}\n'
                                'Error Message: ${onboardingResult.message}\n'),
                          ),
                        );
                      }
                    }
                    break;
                  case AtOnboardingResultStatus.cancel:
                    break;
                }
              },
              child: const Text('Onboard an @sign'),
            ),
          ),
        ),
      ),
    );
  }
}
