// Flutter imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';

class ErrorView extends ConsumerWidget {
  const ErrorView(this.error, this.requestNumber, {Key? key}) : super(key: key);

  final Exception error;
  final String requestNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final shouldShowAppStoreInfo = ref.watch(shouldShowAppStoreInfoProvider);

    return Scaffold(
      // // show version numbers only if not in production
      // // default should be '', but will also accept '.prod' (not ideal)
      // appBar: isProd
      //     ? StyledAppBar(
      //         shouldShowAppStoreInfo: shouldShowAppStoreInfo,
      //       )
      //     : StyledAppBar(
      //         shouldShowAppStoreInfo: shouldShowAppStoreInfo,
      //         title: EnvConfig.APP_SUFFIX,
      //         includeVersionNumber: true,
      //       ),
      // body: StyledBackgroundStack(
      //   child:
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: isPortrait(context)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _ShowError(error),
                    // const StyledCurrentUserInfo(),
                    // StyledChangeUserActions(requestNumber),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: _ShowError(error)),
                    const Gap(12),
                    Expanded(
                      child: Column(children: [
                        // const StyledCurrentUserInfo(),
                        // StyledChangeUserActions(requestNumber),
                      ]),
                    ),
                  ],
                ),
        ),
      ),
      // ),
    );
  }
}

class _ShowError extends StatelessWidget {
  const _ShowError(this.error, {Key? key}) : super(key: key);

  final Exception error;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headlineText = theme.textTheme.headlineMedium;
    final labelText = theme.textTheme.labelLarge;

    // final labels = LocaleUtil().getLabels(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
          // labels.authErrorTitle,
          'Auth Error Title',
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineLarge!,
        ),
        const Gap(24),
        AutoSizeText(
          // labels.errorTitle,
          'Error Title',
          textAlign: TextAlign.center,
          style: headlineText!.apply(decoration: TextDecoration.underline),
        ),
        const Gap(4),
        AutoSizeText(
          error.toString(),
          textAlign: TextAlign.center,
          style: labelText,
        ),
      ],
    );
  }
}
