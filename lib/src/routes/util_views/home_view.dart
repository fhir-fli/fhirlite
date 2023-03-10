import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../src.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
//     final labels = LocaleUtil().getLabels(context);
//     final titleImage =
//         ref.watch(clientAssetsProvider)?.clientImages?.primaryLogo;
//     final titleText =
//         ref.watch(clientAssetsProvider)?.clientNames?.title ?? labels.homePage;
//     return MobileMenu(
//       header: Stack(alignment: AlignmentDirectional.center, children: [
//         if (titleImage != null)
//           Image(
//               image: AssetImage(titleImage),
//               height: doubleByPercentHeight(context, 22),
//               width: doubleByPercentWidth(context, 22)),
//         Text(titleText,
//             style: ref
//                 .watch(clientAssetsProvider)
//                 ?.textTheme
//                 ?.displaySmall
//                 ?.copyWith(fontWeight: FontWeight.bold),
//             textAlign: TextAlign.center),
//       ]),
//       navigationDrawer: FhirLiteNavigationDrawer(labels),
//       activityCards: <ActivityCard>[
//         ActivityCard(
//           icons: Icons.calendar_month,
//           label: labels.schedule,
//           onPressed: () {},
//         ),
//         ActivityCard(
//           icons: Icons.person_search,
//           label: labels.patientIndex,
//           onPressed: () => const PatientIndexRoute().go(context),
//         ),
//         ActivityCard(
//           icons: Icons.chat_outlined,
//           label: labels.communication,
//           onPressed: () {},
//         ),
//         ActivityCard(
//           icons: Icons.groups,
//           label: labels.population,
//           onPressed: () {},
//         ),
//         ActivityCard(
//           icons: Icons.settings,
//           label: labels.admin,
//           onPressed: () {},
//         ),
//       ],
//     );
  }
}
