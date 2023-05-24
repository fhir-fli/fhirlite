import 'package:fhirlite/src/branding/client_assets.dart';
import 'package:fhirlite/src/features/login/login_view.dart';
import 'package:fhirlite/src/routes/go_routes.dart';
import 'package:fhirlite/src/routes/router.dart';
import 'package:fhirlite/src/utils/locale/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../ui/theme/test_config_assets.dart';

GetIt getIt = GetIt.instance;
Future<void> main() async {
  group('Go Router', () {
    final container = ProviderContainer();
    testWidgets('Initial Widget', (widgetTester) async {
      final localeStates = container.read(localeProvider);
      var goRouter = container.read(routerProvider);
      getIt.registerSingleton<ClientAssets>(ClientAssets.fromJson(
          testConfigAssets, GlobalKey<ScaffoldMessengerState>()));
      await widgetTester.pumpWidget(
        ProviderScope(
          child: MaterialApp.router(
            routeInformationProvider: goRouter.routeInformationProvider,
            routeInformationParser: goRouter.routeInformationParser,
            routerDelegate: goRouter.routerDelegate,
            localizationsDelegates: const [
              ...AppLocalizations.localizationsDelegates,
              // custom material localization for haitan creole
            ],
            supportedLocales: const [
              ...AppLocalizations.supportedLocales,
            ],
            // set initially stored locale info here
            locale: localeStates.selectedLocale,
          ),
        ),
      );
      await widgetTester.pumpAndSettle();
      expect(goRouter.location, LoginRoute.path);
      expect(find.byType(LoginView), findsOneWidget);
    });
  });
}
