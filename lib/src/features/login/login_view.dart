import 'package:at_app_flutter/at_app_flutter.dart';
import 'package:at_fhir/at_fhir.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';
import 'load_at_client_preference.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final labels = LocaleUtil().getLabels(context);
    final Future<AtClientPreference> futurePreference =
        loadAtClientPreference();
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    Future<bool> biometricAuth() async {
      final auth = BiometricAuth(
        biometricInstructions: labels.biometricInstructions,
        unsuccessfulBiometrics: labels.unsuccessfulBiometrics,
        biometricsUnavailable: labels.biometricsUnavailable,
        biometricsNotEnrolled: labels.biometricsNotEnrolled,
        biometricPlatformException: labels.biometricPlatformException,
        biometricOtherException: labels.biometricOtherException,
      );
      final result = await auth.login();
      if (result is SuccessNotError) {
        return true;
      } else {
        if (context.mounted) {
          if (result is FailureMessageError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(result.exception),
              ),
            );
          } else {
            // TODO(Dokotela): handle all erorrs
          }
        }
        return false;
      }
    }

    Future<void> onboarding() async {
      if (context.mounted) {
        AtOnboardingResult onboardingResult = await AtOnboarding.onboard(
          context: context,
          config: AtOnboardingConfig(
            atClientPreference: await futurePreference,
            domain: AtEnv.rootDomain,
            rootEnvironment: AtEnv.rootEnvironment,
            appAPIKey: AtEnv.appApiKey,
          ),
        );
        switch (onboardingResult.status) {
          case AtOnboardingResultStatus.success:
            {
              if (context.mounted) {
                const FhirRoute().go(context);
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
                  IconButton(
                      onPressed: () async {
                        final bioAuth = await biometricAuth();
                        if (bioAuth) {
                          ref.read(loginProvider.notifier).loggedIn();
                          onboarding();
                        }
                      },
                      icon: Icon(Icons.fingerprint,
                          size: doubleBySize(context, 170))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        labels.localAuthLogin,
                      )
                    ],
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
