import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget activityCard(
            IconData icons, String label, void Function()? onPressed) =>
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(5),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))))),
                onPressed: onPressed,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        icons,
                        color: Colors.black,
                        size: doubleByPercentWidth(context, 15),
                      ),
                      Text(
                        label,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: doubleByPercentWidth(context, 5),
                        ),
                      ),
                    ])));

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.blueGrey,
          drawer: const NavigationDrawer(),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      if (ref
                              .watch(clientAssetsProvider)
                              ?.clientImages
                              ?.primaryLogo !=
                          null)
                        Image(
                          image: AssetImage(
                            ref
                                .watch(clientAssetsProvider)!
                                .clientImages!
                                .primaryLogo!,
                          ),
                          height: doubleByPercentHeight(context, 22),
                          width: doubleByPercentWidth(context, 22),
                        ),
                      Text(
                        ref.watch(clientAssetsProvider)?.clientNames?.title ??
                            'Home Page',
                        style: ref
                            .watch(clientAssetsProvider)
                            ?.textTheme
                            ?.displaySmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  // const Gap(48),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: [
                        activityCard(Icons.calendar_month, 'Schedule', () {}),
                        activityCard(
                            Icons.person_search, 'Patient Index', () {}),
                        activityCard(
                            Icons.chat_outlined, 'Communication', () {}),
                        activityCard(Icons.groups, 'Population', () {}),
                        activityCard(Icons.settings, 'Admin', () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
