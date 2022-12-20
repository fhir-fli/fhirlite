import 'dart:convert';

import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const jsonFilePath = 'assets/assets.json';
const yamlFilePath = 'assets/assets.yaml';

class TestAssets extends StatelessWidget {
  const TestAssets({super.key});

  @override
  Widget build(BuildContext context) {
    String? yamlFile = '';
    String? fromYamlFile = '';
    String? jsonFile = '';
    String? fromJsonFile = '';
    return MaterialApp(
      home: Consumer(builder: (context, ref, _) {
        return FutureBuilder<bool>(future: Future(() async {
          final notifier = ref.watch(clientAssetsProvider.notifier);
          await notifier.fromFile(yamlFilePath);
          yamlFile = ref.read(clientAssetsProvider)?.toYaml();
          await notifier.fromYamlFile(yamlFilePath);
          fromYamlFile = ref.read(clientAssetsProvider)?.toYaml();
          await notifier.fromFile(jsonFilePath);
          jsonFile = jsonEncode(ref.read(clientAssetsProvider)?.toJson());
          await notifier.fromJsonFile(jsonFilePath);
          fromJsonFile = jsonEncode(ref.read(clientAssetsProvider)?.toJson());
          return true;
        }), builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Text(yamlFile ?? ''),
                  Text(fromYamlFile ?? ''),
                  Text(jsonFile ?? ''),
                  Text(fromJsonFile ?? ''),
                ],
              ),
            );
          } else {
            return Container();
          }
        });
      }),
    );
  }
}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final jsonFile =
      jsonEncode(jsonDecode(await rootBundle.loadString(jsonFilePath)));
  final yamlFile = await rootBundle.loadString(yamlFilePath);
  testWidgets('ReadFile', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: TestAssets()));
    await tester.pumpAndSettle();
    expect(find.text(jsonFile), findsNWidgets(2));
    expect(find.text(yamlFile), findsNWidgets(2));
  });
}
