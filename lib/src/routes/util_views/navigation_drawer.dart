import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../src.dart';

class NavigationDrawer extends ConsumerWidget {
  const NavigationDrawer(this.labels, {super.key});

  final AppLocalizations labels;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget drawerButton(
            IconData icons, String label, void Function()? onPressed) =>
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
            icon: Icon(icons),
            label: Text(label),
            onPressed: onPressed,
          ),
        );

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.33,
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
            ref.watch(clientAssetsProvider)?.clientNames?.title ?? 'Navigator',
            style:
                ref.watch(clientAssetsProvider)?.textTheme?.bodySmall?.copyWith(
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
            'Logout',
            () => const LoginRoute().go(context),
          ),
        ],
      ),
    );
  }
}
