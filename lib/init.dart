// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:at_app_flutter/at_app_flutter.dart' show AtEnv;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:at_utils/at_logger.dart' show AtSignLogger;
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'fhirlite.dart';

/// GetIt required for singletone injection of client asset dependencies
/// This includes color scheme, unique text, unique asset paths, etc
GetIt getIt = GetIt.instance;

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

      /// Load the provider that manages our theme
      final themeEvents = ref.read(appThemeProvider.notifier);
      await themeEvents
          .mapEventsToStates(const ClientThemeEvents.setFirstLoadInfo());
      await themeEvents
          .mapEventsToStates(const ClientThemeEvents.loadLastTheme());
      await themeEvents
          .mapEventsToStates(const ClientThemeEvents.getPackageInfo());
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
    final themeEvents = ref.read(appThemeProvider.notifier);
    super.initState();

    final window = WidgetsBinding.instance.window;
    window.onPlatformBrightnessChanged = () {
      /// This callback is called every time the brightness changes.
      WidgetsBinding.instance.handlePlatformBrightnessChanged();

      /// This statement triggers a redraw if the phone's platform ever changes while the app is running
      /// Otherwise, it wouldn't know to change themes to the new one
      /// spec: https://stackoverflow.com/a/69784475
      if (WidgetsBinding.instance.window.platformBrightness !=
          ref.read(appThemeProvider).data.brightness) {
        themeEvents.mapEventsToStates(const ClientThemeEvents.loadLastTheme());
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);
    final localeStates = ref.watch(localeProvider);
    final goRouter = ref.watch(routerProvider);
    final clientAssets = getIt<ClientAssets>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,

      scaffoldMessengerKey: clientAssets.scaffoldKey,

      // *** THEMES ***
      theme: theme.data,
      themeMode: theme.themeMode,

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
