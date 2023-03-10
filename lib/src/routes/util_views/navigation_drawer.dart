import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../src.dart';

class FhirLiteNavigationDrawer extends ConsumerWidget {
  const FhirLiteNavigationDrawer(this.labels, {super.key});

  final AppLocalizations labels;

  @override
  Drawer build(BuildContext context, WidgetRef ref) {
    Widget drawerButton(
            IconData icons, String label, void Function()? onPressed) =>
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF6637CB)),
            ),
            icon: Icon(icons),
            label: Text(label),
            onPressed: onPressed,
          ),
        );

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.33,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFB46EBF),
              Color(0xFF6637CB),
              Color(0xFF25939A),
              Color(0xFF25939A),
              Color(0xFF6637CB),
              Color(0xFFB46EBF),
            ],
            stops: [
              0.006,
              0.018,
              0.25,
              0.9,
              0.982,
              0.994,
            ],
          ),
        ),
        child: Column(
          children: [
            if (ref.watch(clientAssetsProvider)?.clientImages?.primaryLogo !=
                null)
              Image(
                image: AssetImage(
                  ref.watch(clientAssetsProvider)!.clientImages!.primaryLogo!,
                ),
              ),
            Text(
              ref.watch(clientAssetsProvider)?.clientNames?.title ??
                  labels.navigator,
              style: ref
                  .watch(clientAssetsProvider)
                  ?.textTheme
                  ?.bodySmall
                  ?.copyWith(
                    color: Colors.white,
                  ),
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            drawerButton(
              Icons.home,
              labels.homePage,
              () => const HomeRoute().go(context),
            ),
            const Gap(8),
            drawerButton(
              Icons.calendar_month,
              labels.schedule,
              () {},
            ),
            const Gap(8),
            drawerButton(
              Icons.person_search,
              labels.patientIndex,
              () => const PatientIndexRoute().go(context),
            ),
            const Gap(8),
            drawerButton(
              Icons.chat_outlined,
              labels.communication,
              () {},
            ),
            const Gap(8),
            drawerButton(
              Icons.groups,
              labels.population,
              () {},
            ),
            const Gap(8),
            drawerButton(
              Icons.settings,
              labels.admin,
              () {},
            ),
            const Expanded(child: SizedBox()),
            drawerButton(
              Icons.logout_rounded,
              labels.logout,
              () => const LoginRoute().go(context),
            ),
          ],
        ),
      ),
    );
  }
}
