import 'package:age_calculator/age_calculator.dart';
import 'package:fhir/r4.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// This function will return a more specific age for children, including months
/// if under 3 years, in days if under 1 month
DateDuration? ageCalculator({Date? birthDate, FhirDateTime? birthDateTime}) =>
    (birthDate == null || !birthDate.isValid) &&
            (birthDateTime == null || !birthDateTime.isValid)
        ? null
        : birthDate != null && birthDate.isValid
            ? AgeCalculator.age(birthDate.value!)
            : AgeCalculator.age(birthDateTime!.value!);

String ageString(DateDuration? ageDuration, AppLocalizations labels) {
  String oneOrMoreDays(int days) =>
      days == 1 ? '1 ${labels.day}' : '$days ${labels.days}';
  String oneOrMoreMonths(int months) =>
      months == 1 ? '1 ${labels.month}' : '$months ${labels.months}';
  String oneOrMoreYears(int years) =>
      years == 1 ? '1 ${labels.year}' : '$years ${labels.years}';
  return ageDuration == null
      ? labels.noBirthdateAvailable
      : ageDuration.years == 0
          ? ageDuration.months == 0
              ? oneOrMoreDays(ageDuration.days)
              : oneOrMoreMonths(ageDuration.months)
          : ageDuration.years < 3
              ? '${oneOrMoreYears(ageDuration.years)}, ${oneOrMoreMonths(ageDuration.months)}'
              : oneOrMoreYears(ageDuration.years);
}
