import 'package:flutter_test/flutter_test.dart';

import 'client_assets/client_assets_provider.dart';
import 'fhirlite.dart';

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('Widget Testing', () {
    testWidgets('Fhir Lite Test', (tester) async {
      await fhirliteTest(tester);
    });
    testWidgets('ClientAssets Provider Test', (tester) async {
      await clientAssetsProviderTest(tester);
    });
  });
}
