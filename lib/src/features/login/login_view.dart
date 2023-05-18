import 'package:fhir_biometric/fhir_biometric.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final labels = LocaleUtil().getLabels(context);
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

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
                    style: clientAssets.clientTextTheme.headlineLarge,
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
                    },
                  ),
                  Gap(doubleByHeight(context, 120)),
                  IconButton(
                    onPressed: () async {
                      final auth = BiometricAuth();
                      final result = await auth.login();
                      if (result == 'true') {
                        ref.read(loginProvider.notifier).loggedIn();
                      } else if (context.mounted) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(result)));
                      }
                    },
                    icon: Icon(
                      Icons.fingerprint,
                      size: doubleBySize(context, 170),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        labels.localAuthLogin,
                        style: clientAssets.clientTextTheme.headlineSmall,
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
