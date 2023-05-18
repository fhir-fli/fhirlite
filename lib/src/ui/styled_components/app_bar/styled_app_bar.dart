// Flutter imports:
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb;
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_size_text/auto_size_text.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../src.dart';

const _kAppBarHeight = 56.0;
const _kBottomHeight = 48.0;

/// Initially shown only if the app is loaded in web. Local provider for this widget only
final shouldShowAppStoreInfoProvider = StateProvider<bool>((ref) => kIsWeb);

/// Get link to Google Play / Apple App Store, vs default
String _appStoreLink() {
  if (defaultTargetPlatform == TargetPlatform.android) {
    return clientAssets.clientLinks.APP_STORE_ANDROID;
  }
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return clientAssets.clientLinks.APP_STORE_IOS;
  }
  return clientAssets.clientLinks.APP_STORE_UNDEFINED;
}

class StyledAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const StyledAppBar({
    this.title,
    this.actions,
    this.includeVersionNumber,
    this.replaceActionsWithLogoutButton,
    this.shouldImplyLeading,
    required this.shouldShowAppStoreInfo,
    Key? key,
  }) : super(key: key);

  final String? title;
  final List<Widget>? actions;
  final bool? includeVersionNumber;
  final bool? replaceActionsWithLogoutButton;
  final bool? shouldImplyLeading;
  final bool shouldShowAppStoreInfo;

  @override
  PreferredSizeWidget build(BuildContext context, WidgetRef ref) => AppBar(
        title: includeVersionNumber ?? false
            ? _Text('v${ref.watch(clientThemeProvider).versionNumber}$title')
            : _Text(title),
        actions: replaceActionsWithLogoutButton ?? false
            ? const [StyledAppBarLogoutButton(), Gap(8)]
            : actions,
        // remove auto logout button
        automaticallyImplyLeading: shouldImplyLeading ?? false,
        bottom: clientAssets.clientFeatures.shouldShowAppDownloadLinksOnWeb &&
                shouldShowAppStoreInfo
            ? _AppStoreInfo()
            : null,
      );

  @override
  // Size get preferredSize =>
  //     const Size.fromHeight(_kAppBarHeight + _kBottomHeight);
  Size get preferredSize => Size.fromHeight(
      _kAppBarHeight + (shouldShowAppStoreInfo ? _kBottomHeight : 0));
}

class _Text extends StatelessWidget {
  const _Text(this.title, {Key? key}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title ?? '',
      textAlign: TextAlign.center,
      softWrap: true,
      style: Theme.of(context).appBarTheme.titleTextStyle,
    );
  }
}

class _AppStoreInfo extends ConsumerWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final labels = LocaleUtil().getLabels(context);
    final colorExtension = getColorExtension(context);

    final style = Theme.of(context)
        .textTheme
        .bodyLarge
        ?.apply(color: colorExtension.onNotification);

    return Container(
      color: colorExtension.notification,
      height: _kBottomHeight,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(labels.notificationAppRunsBest,
                    maxLines: 1, textAlign: TextAlign.center, style: style),
                RichText(
                  maxLines: 1,
                  text: TextSpan(children: [
                    RichSpanLink(
                        labels.notificationDownloadNow,
                        _appStoreLink(),
                        context,
                        style!.apply(decoration: TextDecoration.underline)),
                  ]),
                ),
              ],
            ),
          ),
          StyledAppBarIconButtons(
            icon: Icons.close,
            iconSize: 28,
            color: colorExtension.onNotification,
            onPressed: () {
              ref.read(shouldShowAppStoreInfoProvider.notifier).state = false;
            },
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_kBottomHeight);
}
