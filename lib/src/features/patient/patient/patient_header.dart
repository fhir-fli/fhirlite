import 'package:fhir/r4.dart';
import 'package:fhirlite/src/utils/fhir/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../src.dart';

class PatientHeader extends ConsumerWidget {
  const PatientHeader({this.patient, super.key});

  final Patient? patient;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeStates = ref.watch(localeStateProvider);
    final name = preferredNameFromHumanNameList(patient?.name);
    final familyName = familyNameFromHumanNameList(names: patient?.name);
    final ageDuration = ageCalculator(birthDate: patient?.birthDate);
    final age = ageDuration == null
        ? 'No Birthdate Available'
        : ageDuration.years == 0
            ? ageDuration.months == 0
                ? 'Days: ${ageDuration.days}'
                : 'Months: ${ageDuration.months}'
            : ageDuration.years < 3
                ? 'Years: ${ageDuration.years} Months: ${ageDuration.months}'
                : 'Years: ${ageDuration.years}';
    final genderIdentity = valueSetCodeToDisplay(
            localeStates, patient?.extension_, genderIdentityValueSet) ??
        'Unavailable';
    final pronouns = valueSetCodeToDisplay(
            localeStates, patient?.extension_, pronounsValueSet) ??
        'Unavailable';
    final sexAtBirth = valueSetCodeToDisplay(
            localeStates, patient?.extension_, sexAtBirthValueSet) ??
        'Unavailable';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Preferred Name: $name'),
        Text('Family Name: $familyName'),
        Text('Age: $age'),
        Text('Gender Identity: $genderIdentity'),
        Text('Pronouns: $pronouns'),
        Text('Sex at Birth: $sexAtBirth'),
      ],
    );
  }
}
