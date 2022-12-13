import 'dart:developer';

import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InitView extends HookConsumerWidget {
  const InitView(this.configFilePath, {super.key});

  final String? configFilePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(clientAssetsProvider);
    return MaterialApp(
      theme: ThemeData(
        textTheme: ref.watch(clientAssetsProvider)?.textTheme,
      ),
      home: Scaffold(
        body: SafeArea(
          child: FutureBuilder(
            future: Future<bool>(() async {
              try {
                if (configFilePath != null) {
                  await ref
                      .watch(clientAssetsProvider.notifier)
                      .fromFile(configFilePath!);
                }
                return true;
              } catch (e) {
                log(e.toString());
                return false;
              }
            }),
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!) {
                  return const LoginView();
                } else {
                  return const AlertView(
                      message: 'There was an error loading the application');
                }
              }
              return const AlertView(
                message: 'Loading Assets...',
                loading: true,
              );
            },
          ),
        ),
      ),
    );
  }
}
