import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../src.dart';

class PatientView extends ConsumerWidget {
  const PatientView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final labels = LocaleUtil().getLabels(context);
    final patient = ref.watch(activePatientProvider);

    return MobileMenu(
      header: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Center(child: PatientHeader(patient: patient, labels: labels))
        ],
      ),
      navigationDrawer: NavigationDrawer(labels),
      activityCards: <ActivityCard>[
        ActivityCard(
          icons: Icons.edit_note,
          label: labels.patientInfo,
          onPressed: () {},
        ),
        ActivityCard(
          icons: Icons.ssid_chart,
          label: labels.growth,
          onPressed: () {},
        ),
        ActivityCard(
          icons: MdiIcons.needle,
          label: 'Immunizations',
          onPressed: () {},
        ),
        // ActivityCard(
        //   icons: Icons.table_view,
        //   label: labels.dataReview,
        //   onPressed: () {},
        // ),
        // ActivityCard(
        //   icons: Icons.notes,
        //   label: labels.notes,
        //   onPressed: () {},
        // ),
        // ActivityCard(
        //   icons: Icons.calendar_month,
        //   label: labels.schedule,
        //   onPressed: () {},
        // ),
        // ActivityCard(
        //   icons: Icons.chat,
        //   label: labels.communication,
        //   onPressed: () {},
        // ),
      ],
    );
  }
}
