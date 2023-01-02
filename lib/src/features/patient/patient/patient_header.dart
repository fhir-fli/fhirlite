import 'package:fhir/r4.dart';
import 'package:fhirlite/src/utils/fhir/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../src.dart';

class PatientHeader extends ConsumerWidget {
  const PatientHeader({this.patient, required this.labels, super.key});

  final Patient? patient;
  final AppLocalizations labels;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeStates = ref.watch(localeStateProvider);
    final name = preferredNameFromHumanNameList(patient?.name);
    final familyName = familyNameFromHumanNameList(names: patient?.name);
    final age = ageString(ageCalculator(birthDate: patient?.birthDate), labels);
    final genderIdentity = valueSetCodeToDisplay(
            localeStates, patient?.extension_, genderIdentityValueSet) ??
        labels.unavailable;
    final pronouns = valueSetCodeToDisplay(
            localeStates, patient?.extension_, pronounsValueSet) ??
        labels.unavailable;
    final sexAtBirth = valueSetCodeToDisplay(
            localeStates, patient?.extension_, sexAtBirthValueSet) ??
        labels.unavailable;

    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${labels.preferredName}: $name'),
            Text('${labels.familyName}: $familyName'),
            Text('${labels.age}: $age'),
            Text('${labels.genderIdentity}: $genderIdentity'),
            Text('${labels.pronouns}: $pronouns'),
            Text('${labels.sexAtBirth}: $sexAtBirth'),
          ],
        ),
      ),
    );
  }
}
