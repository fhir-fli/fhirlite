import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../src.dart';

class MobileMenu extends ConsumerWidget {
  const MobileMenu({
    required this.header,
    this.navigationDrawer,
    required this.activityCards,
    super.key,
  });

  final Widget header;
  final NavigationDrawer? navigationDrawer;
  final List<ActivityCard> activityCards;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget activityCard(ActivityCard activityCard) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(5),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))))),
            onPressed: activityCard.onPressed,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(activityCard.icons,
                      color: Colors.black,
                      size: doubleByPercentWidth(context, 15)),
                  Text(activityCard.label,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: doubleByPercentWidth(context, 5)))
                ])));

    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                drawer: navigationDrawer,
                body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Column(children: [
                      header,
                      Expanded(
                          child: GridView.count(
                              crossAxisCount: 2,
                              children: activityCards
                                  .map((e) => activityCard(e))
                                  .toList())),
                    ]))))));
  }
}

class ActivityCard {
  const ActivityCard({
    required this.icons,
    required this.label,
    this.onPressed,
  });

  final IconData icons;
  final String label;
  final void Function()? onPressed;
}
