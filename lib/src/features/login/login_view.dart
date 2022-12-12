import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = doubleByPercentWidth(context, 33, 600, 400);
    final double height = doubleByPercentHeight(context, 80, 900);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: height,
              width: width,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    if (ref
                            .read(clientAssetsProvider)
                            ?.clientImages
                            ?.primaryLogo !=
                        null)
                      Image(
                        height: height * .2,
                        width: width * .9,
                        image: AssetImage(
                          ref
                              .read(clientAssetsProvider)!
                              .clientImages!
                              .primaryLogo!,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
