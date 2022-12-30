import 'package:fhirlite/src/features/patient/patient_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../src.dart';

class PatientView extends ConsumerWidget {
  const PatientView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final labels = LocaleUtil().getLabels(context);
    final patient = ref.watch(activePatientProvider);
    final familyName = familyNameFromHumanNameList(names: patient?.name);
    final name = preferredNameFromHumanNameList(patient?.name);

    return MobileMenu(
      header: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Center(
            child: Column(
              children: [
                Text('Preferred Name: $name'),
                Text('Family Name: $familyName')
              ],
            ),
          ),
        ],
      ),
      navigationDrawer: NavigationDrawer(labels),
      activityCards: <ActivityCard>[
        ActivityCard(
          icons: Icons.edit_note,
          label: 'Patient Info',
          onPressed: () {},
        ),
        ActivityCard(
          icons: Icons.ssid_chart,
          label: 'Growth',
          onPressed: () {},
        ),
        ActivityCard(
          icons: Icons.table_view,
          label: 'Data Review',
          onPressed: () {},
        ),
        ActivityCard(
          icons: Icons.notes,
          label: 'Notes',
          onPressed: () {},
        ),
        ActivityCard(
          icons: Icons.calendar_month,
          label: 'Schedule',
          onPressed: () {},
        ),
        ActivityCard(
          icons: Icons.chat,
          label: 'Communication',
          onPressed: () {},
        ),
      ],
    );
  }
}
