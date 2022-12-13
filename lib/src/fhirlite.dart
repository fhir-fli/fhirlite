import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../fhirlite.dart';

Widget fhirLite(String configFilePath) =>
    ProviderScope(child: FhirLiteView(configFilePath));

class FhirLiteView extends HookConsumerWidget {
  const FhirLiteView(this.configFilePath, {super.key});

  final String? configFilePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final localeStates = ref.watch(localeStateProvider);
    if (configFilePath != null) {
      ref.watch(clientAssetsProvider.notifier).fromFile(configFilePath!);
    }
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        textTheme: ref.watch(clientAssetsProvider)?.textTheme,
        // TODO(Dokotela): make reactive to color scheme change
        colorScheme: ref.watch(clientAssetsProvider)?.colorSchemeLight,
      ),
      // *** LOCALES ***
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
        // custom material localization for haitan creole
      ],
      supportedLocales: const [
        ...AppLocalizations.supportedLocales,
      ],
      // set initially stored locale info here
      locale: localeStates.selectedLocale,
    );
  }
}
