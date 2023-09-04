// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:at_app_flutter/at_app_flutter.dart' show AtEnv;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:at_utils/at_logger.dart' show AtSignLogger;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'fhirlite.dart';

final AtSignLogger _logger = AtSignLogger(AtEnv.appNamespace);

/// Init Widget does all of the initial loading of anything that needs to be
/// loaded asynchronously
class Init extends ConsumerWidget {
  const Init(this.config, {super.key});

  /// We currently do this in the launch app for dev purposes, but in real life
  /// we could put it here, so we pass in the path of the config file
  final String config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<bool> initializeAsync() async {
      // * AtEnv is an abtraction of the flutter_dotenv package used to
      // * load the environment variables set by at_app
      try {
        await AtEnv.load();
      } catch (e) {
        _logger.finer('Environment failed to load from .env: ', e);
      }
      return true;
    }

    return FutureBuilder(
      future: initializeAsync(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const MyApp();
        } else {
          return MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: Center(
                  child: Image.asset('assets/images/fhir-fli-logo.png'),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();

    final window = WidgetsBinding.instance.window;
    window.onPlatformBrightnessChanged = () {
      /// This callback is called every time the brightness changes.
      WidgetsBinding.instance.handlePlatformBrightnessChanged();
    };
  }

  @override
  Widget build(BuildContext context) {
    final localeStates = ref.watch(localeProvider);
    final goRouter = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,

      // *** ROUTES ***
      restorationScopeId: 'root',
      routeInformationProvider: goRouter.routeInformationProvider,
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,

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
