// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';

class DataLoadingView extends ConsumerWidget {
  const DataLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shouldShowAppStoreInfo = ref.watch(shouldShowAppStoreInfoProvider);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      // show version numbers only if not in production
      // default should be '', but will also accept '.prod' (not ideal)
      appBar: isProd
          ? StyledAppBar(
              shouldShowAppStoreInfo: shouldShowAppStoreInfo,
            )
          : StyledAppBar(
              shouldShowAppStoreInfo: shouldShowAppStoreInfo,
              title: EnvConfig.APP_SUFFIX,
              includeVersionNumber: true),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
