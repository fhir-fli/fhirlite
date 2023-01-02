import 'package:age_calculator/age_calculator.dart';
import 'package:fhir/r4.dart';

/// This function will return a more specific age for children, including months
/// if under 3 years, in days if under 1 month
DateDuration? ageCalculator({Date? birthDate, FhirDateTime? birthDateTime}) =>
    (birthDate == null || !birthDate.isValid) &&
            (birthDateTime == null || !birthDateTime.isValid)
        ? null
        : birthDate != null && birthDate.isValid
            ? AgeCalculator.age(birthDate.value!)
            : AgeCalculator.age(birthDateTime!.value!);
