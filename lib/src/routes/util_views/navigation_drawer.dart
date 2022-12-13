import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';

class NavigationDrawer extends ConsumerWidget {
  const NavigationDrawer({super.key});

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
          drawerButton(Icons.home, 'Home', () => const HomeRoute().go(context)),
          const Gap(8),
          drawerButton(Icons.calendar_month, 'Schedule', () {}),
          const Gap(8),
          drawerButton(Icons.person_search, 'Patient Index', () {}),
          const Gap(8),
          drawerButton(Icons.chat_outlined, 'Communications', () {}),
          const Gap(8),
          drawerButton(Icons.cloud_upload_outlined, 'Transfer Data', () {}),
          const Expanded(child: SizedBox()),
          drawerButton(Icons.logout_rounded, 'Logout',
              () => const LoginRoute().go(context)),
        ],
      ),
    );
  }
}
