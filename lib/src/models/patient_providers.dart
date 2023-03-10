import 'dart:convert';

import 'package:fhir/r4.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../src.dart';

part 'patient_providers.g.dart';

/// When there is a single patient selected, this provider will hold it
@riverpod
class ActivePatient extends _$ActivePatient {
  @override
  Patient? build() => null;

  /// Local Patient ID if available
  String? get patientId => state?.id;

  /// Patient Medical Record Number if available
  String? get patientMrn {
    final identifierIndex1 = state?.identifier?.indexWhere((element) {
      final tempIndex = element.type?.coding?.indexWhere((element) =>
          element.system.toString() ==
              'http://terminology.hl7.org/CodeSystem/v2-0203' &&
          element.code == Code('MR'));
      return tempIndex != null && tempIndex != -1;
    });
    if (identifierIndex1 != null && identifierIndex1 != -1) {
      return state!.identifier![identifierIndex1].value;
    } else {
      return null;
    }
  }

  /// Patient social securiy number if available
  String? get patientSsn {
    final identifierIndex1 = state?.identifier?.indexWhere((element) =>
        element.system.toString() == 'http://hl7.org/fhir/sid/us-ssn');
    if (identifierIndex1 != null && identifierIndex1 != -1) {
      return state!.identifier![identifierIndex1].value;
    } else {
      return null;
    }
  }

  /// Patient's driver's license if available
  String? get patientDriversLicense => null;

  /// Patient's national ID number if available
  String? get patientNationalIdNumber => null;

  /// Patient's preferred name (will return given names if no preferred name
  /// is found)
  String? get patientPreferredName =>
      preferredNameFromHumanNameList(names: state?.name);

  /// Returns a single string with all of the patient's given names
  String? get patientGivenNames =>
      givenNamesFromHumanNameList(names: state?.name);

  /// Patient's official family name
  String? get patientFamilyName =>
      familyNameFromHumanNameList(names: state?.name);

  /// Patient's sex at birth
  // TODO(Dokotela): consider including other ValueSets - for import anyway,
  // should continue to use our ValueSet for new values
  String? get patientSexAtBirth {
    /// Find if there's an extension where the url contains both 'sex' and
    /// 'birth', this will find our ValueSet, but should also find some others
    final index = state?.extension_?.indexWhere((element) =>
        element.url.toString().toLowerCase().contains('sex') &&
        element.url.toString().toLowerCase().contains('birth'));
    if (index != null && index != -1) {
      /// As long as it exists
      final ext = state!.extension_![index];
      if (ext.valueCode != null) {
        /// Return the valueCode if present
        return ext.valueCode.toString();
      } else {
        /// Otherwise we're going to look for valueCoding in the extensions of
        /// the extension. This is usually where we're going to have information
        int? displayIndex = ext.extension_
            ?.indexWhere((element) => element.valueCoding?.display != null);
        if (displayIndex != null && displayIndex != -1) {
          return ext.extension_![displayIndex].valueCoding!.display;
        } else {
          /// However, if that's not where it is, there are some other places
          /// to look, like in a ValueString in the extensions of the extension
          displayIndex = ext.extension_
              ?.indexWhere((element) => element.valueString != null);
          if (displayIndex != null && displayIndex != -1) {
            return ext.extension_![displayIndex].valueString;
          } else {
            return null;
          }
        }
      }
    } else {
      return null;
    }
  }

  String? get patientSexualOrientation {
    /// Find if there's an extension where the url contains both 'sexual' and
    /// 'orientation', this will find our ValueSet, but should also find some others
    final index = state?.extension_?.indexWhere((element) =>
        element.url.toString().toLowerCase().contains('sexual') &&
        element.url.toString().toLowerCase().contains('orientation'));
    if (index != null && index != -1) {
      /// As long as it exists
      final ext = state!.extension_![index];
      if (ext.valueCode != null) {
        /// Return the valueCode if present
        return ext.valueCode.toString();
      } else {
        /// Otherwise we're going to look for valueCoding in the extensions of
        /// the extension. This is usually where we're going to have information
        int? displayIndex = ext.extension_
            ?.indexWhere((element) => element.valueCoding?.display != null);
        if (displayIndex != null && displayIndex != -1) {
          return ext.extension_![displayIndex].valueCoding!.display;
        } else {
          /// However, if that's not where it is, there are some other places
          /// to look, like in a ValueString in the extensions of the extension
          displayIndex = ext.extension_
              ?.indexWhere((element) => element.valueString != null);
          if (displayIndex != null && displayIndex != -1) {
            return ext.extension_![displayIndex].valueString;
          } else {
            return null;
          }
        }
      }
    } else {
      return null;
    }
  }

  String? get patientGenderIdentiy {
    /// Find if there's an extension where the url contains both 'gender' and
    /// 'identity', this will find our ValueSet, but should also find some others
    final index = state?.extension_?.indexWhere((element) =>
        element.url.toString().toLowerCase().contains('gender') &&
        element.url.toString().toLowerCase().contains('identity'));
    if (index != null && index != -1) {
      /// As long as it exists
      final ext = state!.extension_![index];
      if (ext.valueCode != null) {
        /// Return the valueCode if present
        return ext.valueCode.toString();
      } else {
        /// Otherwise we're going to look for valueCoding in the extensions of
        /// the extension. This is usually where we're going to have information
        int? displayIndex = ext.extension_
            ?.indexWhere((element) => element.valueCoding?.display != null);
        if (displayIndex != null && displayIndex != -1) {
          return ext.extension_![displayIndex].valueCoding!.display;
        } else {
          /// However, if that's not where it is, there are some other places
          /// to look, like in a ValueString in the extensions of the extension
          displayIndex = ext.extension_
              ?.indexWhere((element) => element.valueString != null);
          if (displayIndex != null && displayIndex != -1) {
            return ext.extension_![displayIndex].valueString;
          } else {
            return null;
          }
        }
      }
    } else {
      return null;
    }
  }

  String? get patientPronouns {
    /// Find if there's an extension where the url contains 'pronoun', at this
    /// point likely to just find our ValueSet, because it's unlikely that many
    /// others exist
    final index = state?.extension_?.indexWhere(
        (element) => element.url.toString().toLowerCase().contains('pronoun'));
    if (index != null && index != -1) {
      /// As long as it exists
      final ext = state!.extension_![index];
      if (ext.valueCode != null) {
        /// Return the valueCode if present
        return ext.valueCode.toString();
      } else {
        /// Otherwise we're going to look for valueCoding in the extensions of
        /// the extension. This is usually where we're going to have information
        int? displayIndex = ext.extension_
            ?.indexWhere((element) => element.valueCoding?.display != null);
        if (displayIndex != null && displayIndex != -1) {
          return ext.extension_![displayIndex].valueCoding!.display;
        } else {
          /// However, if that's not where it is, there are some other places
          /// to look, like in a ValueString in the extensions of the extension
          displayIndex = ext.extension_
              ?.indexWhere((element) => element.valueString != null);
          if (displayIndex != null && displayIndex != -1) {
            return ext.extension_![displayIndex].valueString;
          } else {
            return null;
          }
        }
      }
    } else {
      return null;
    }
  }

  /// Birthdate
  Date? get patientBirthdate => state?.birthDate;

  /// First phone number
  ContactPoint? get patientPhone1 {
    final index = state?.telecom
        ?.indexWhere((element) => element.system == ContactPointSystem.phone);
    if (index != null && index != -1) {
      return state!.telecom![index];
    } else {
      return null;
    }
  }

  /// Second phone number
  ContactPoint? get patientPhone2 {
    final contactPoints = state?.telecom
        ?.where((element) => element.system == ContactPointSystem.phone);
    if (contactPoints != null &&
        contactPoints.isNotEmpty &&
        contactPoints.length > 1) {
      return contactPoints.elementAt(1);
    } else {
      return null;
    }
  }

  /// First email - and only currently, but in case a second should ever be
  /// needed, it's still delineated as 1
  ContactPoint? get patientEmail1 {
    final index = state?.telecom
        ?.indexWhere((element) => element.system == ContactPointSystem.email);
    if (index != null && index != -1) {
      return state!.telecom![index];
    } else {
      return null;
    }
  }

  /// First Address - as above, only 1 currently, but in order to accomodate
  /// more than that in the future
  Address? get patientAddres1 => state?.address?.first;

  /// TODO(Dokotela): decide if we want to use UScore's race, ethnicity and
  /// Tribal Identity or if we should make our own with a wider ValueSet

  /// Patient Race
  String? get patientRace => null;

  /// Patient Ethnicity
  String? get patientEthnicity => null;

  /// PatientTribalEntity
  String? get patientTribalEntity => null;

  void updatePatient(Patient newPatient) => state = newPatient;
}

/// Practitioners often have a patient panel assigned to them, this provider
/// will contain the those patients assigned to a Provider
@riverpod
class ProviderPatients extends _$ProviderPatients {
  @override
  Map<String, Patient> build() => <String, Patient>{};

  void addPatient(Patient patient) {
    if (patient.id == null) {
      patient = patient.newId() as Patient;
    }
    state[patient.id!] = patient;
  }
}

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
@riverpod
class AllPatients extends _$AllPatients {
  @override
  Map<String, Patient> build() => <String, Patient>{};

  void addPatient(Patient patient) {
    if (patient.id == null) {
      patient = patient.newId() as Patient;
    }
    state[patient.id!] = patient;
  }

  Future<void> loadDemoPatients() async {
    if (ref.read(isMockDemoProvider)) {
      final patientFile =
          ref.read(clientAssetsProvider)?.demoResources?.patients;
      if (patientFile != null) {
        final fileContents =
            jsonDecode(await rootBundle.loadString(patientFile));
        if (fileContents is List) {
          final patients = <String, Patient>{};
          for (var content in fileContents) {
            var newPatient = Resource.fromJson(content);
            if (newPatient is Patient) {
              if (newPatient.id != null) {
                newPatient = newPatient.newId() as Patient;
              }
              patients[newPatient.id!] = newPatient;
            }
          }
          state = patients;
        }
      }
    }
  }
}
