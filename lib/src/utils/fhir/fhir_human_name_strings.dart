// Package imports:
import 'package:fhir/r4.dart';

///***************************************************************************/
/// This whole file is for transforming [HumanName] in FHIR into Strings
/// ***************************************************************************

/// Provides a single [String] of a [HumanName] that is of the form,
/// "Last, Given" - where given is a concatenated list of the names supplied in
/// the given field of a [HumanName]
String fullNameFromSingleHumanName(HumanName? name) =>
    name == null ? '' : '${name.family}, ${name.given?.join(" ")}';

/// This returns a single [String] of a [HumanName] from a list of [HumanName]s
/// as this is usually how it's found in a FHIR resource. If the [index] is out
/// of range, it returns an empty String, and if no index is specified,it
/// assumes it should work with the first name in the list
String fullNameFromHumanNameList(
    {List<HumanName>? names, int? index, HumanNameUse? use}) {
  if (names == null || names.isEmpty) {
    return '';
  }
  if (use == null) {
    return fullNameFromSingleHumanName(names[(index ?? 0)]);
  }
  index = names.indexWhere((element) => element.use == use);
  if (index == -1) {
    return '';
  } else {
    return fullNameFromSingleHumanName(names[index]);
  }
}

/// Provides a single [String] of a [HumanName] that is just the last name
String familyNameFromSingleHumanName(HumanName? name) => name?.family ?? '';
String lastNameFromSingleHumanName(HumanName? name) =>
    familyNameFromSingleHumanName(name);

/// This returns a single [String] of a last name from a List of [HumanName]s
/// as this is usually how it's found in a FHIR resource. If the [index] is out
/// of range, it returns an empty String, and if no index is specified,it
/// assumes it should work with the first name in the list
String familyNameFromHumanNameList(
    {List<HumanName>? names, int? index, HumanNameUse? use}) {
  if (names == null || names.isEmpty) {
    return '';
  }
  if (use == null) {
    return familyNameFromSingleHumanName(names[(index ?? 0)]);
  }
  index = names.indexWhere((element) => element.use == use);
  if (index == -1) {
    return '';
  } else {
    return familyNameFromSingleHumanName(names[index]);
  }
}

String lastNameFromHumanNameList(
        {List<HumanName>? name, int? index, HumanNameUse? use}) =>
    familyNameFromHumanNameList(names: name, index: index, use: use);

/// Provides a single [String] from the list of given names in a [HumanName]
String givenNamesFromSingleHumanName(HumanName? name) =>
    name?.given == null || name!.given!.isEmpty ? '' : name.given!.join(' ');

/// This returns a single [String] from the list of given names in a list of
/// [HumanName]s as this is usually how it's found in a FHIR resource. If the
/// [index] is out of range, it returns an empty String, and if no index is
/// specified,it assumes it should work with the first name in the list
String givenNamesFromHumanNameList(
    {List<HumanName>? names, int? index, HumanNameUse? use}) {
  if (names == null || names.isEmpty) {
    return '';
  }
  if (use == null) {
    return givenNamesFromSingleHumanName(names[(index ?? 0)]);
  }
  index = names.indexWhere((element) => element.use == use);
  if (index == -1) {
    return '';
  } else {
    return givenNamesFromSingleHumanName(names[index]);
  }
}

/// This returns a single [String] from the list of given names in a list of
/// [HumanName]s as this is usually how it's found in a FHIR resource. This
/// searches for the [HumanNameUse.usual], and if it's not found returns an
/// empty String
String preferredNameFromHumanNameList(List<HumanName>? names) {
  if (names == null) {
    return '';
  }
  final index =
      names.indexWhere((element) => element.use == HumanNameUse.usual);
  if (index == -1) {
    return givenNamesFromHumanNameList(names: names);
  } else {
    return givenNamesFromSingleHumanName(names[index]);
  }
}
