import 'package:at_app_flutter/at_app_flutter.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';
import 'load_at_client_preference.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations labels = LocaleUtil().getLabels(context);
    final Future<AtClientPreference> futurePreference =
        loadAtClientPreference();
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    Future<void> onboarding() async {
      if (context.mounted) {
        AtOnboardingResult onboardingResult = await AtOnboarding.onboard(
          context: context,
          config: AtOnboardingConfig(
            atClientPreference: await futurePreference,
            domain: AtEnv.rootDomain,
            rootEnvironment: RootEnvironment.Production,
            appAPIKey: AtEnv.appApiKey,
          ),
        );
        switch (onboardingResult.status) {
          case AtOnboardingResultStatus.success:
            {
              if (context.mounted) {
                context.goNamed(Routes.fhir.name);
              }
            }
            break;
          case AtOnboardingResultStatus.error:
            {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
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
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Column(
                children: [
                  Gap(doubleByPercentHeight(context, .2)),
                  Text(
                    labels.signIn,
                  ),
                  Gap(doubleByHeight(context, 30)),
                  StyledOvalTextFormField(
                    prefixIcon: const Icon(Icons.email),
                    label: labels.username,
                    controller: usernameController,
                  ),
                  Gap(doubleByHeight(context, 30)),
                  StyledOvalTextFormField(
                    prefixIcon: const Icon(Icons.lock),
                    label: labels.password,
                    controller: passwordController,
                  ),
                  Gap(doubleByHeight(context, 60)),
                  StyledOvalButton(
                    label: labels.login,
                    onPressed: () {
                      ref.read(loginProvider.notifier).loggedIn();
                      onboarding();
                    },
                  ),
                  Gap(doubleByHeight(context, 120)),
                  OutlinedButton(
                      onPressed: () async {
                        ref.read(loginProvider.notifier).loggedIn();
                        onboarding();
                        // final bioAuth = await biometricAuth(labels);
                        // if (bioAuth is FhirliteSuccess) {
                        //   ref.read(loginProvider.notifier).loggedIn();
                        //   onboarding();
                        // } else {
                        //   if (context.mounted) {
                        //     ErrorSnackBar(bioAuth as FhirliteError);
                        //   }
                        // }
                      },
                      child: Center(
                        child: Column(
                          children: [
                            Text(labels.localAuthLogin),
                            Icon(Icons.fingerprint,
                                size: doubleBySize(context, 170)),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
