import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AlertView extends HookConsumerWidget {
  const AlertView({this.message, this.loading = false, super.key});

  final String? message;
  final bool loading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size.width;
    size = size > MediaQuery.of(context).size.height
        ? MediaQuery.of(context).size.height
        : size;
    size = size > 350 ? 350 : size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (message != null)
                Center(
                  child: Text(
                    message!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 36),
                  ),
                ),
              if (loading) const Center(child: CircularProgressIndicator()),
              if (ref.read(clientAssetsProvider)?.clientImages?.primaryLogo !=
                  null)
                Image(
                  width: size,
                  height: size,
                  image: AssetImage(ref
                      .read(clientAssetsProvider)!
                      .clientImages!
                      .primaryLogo!),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
