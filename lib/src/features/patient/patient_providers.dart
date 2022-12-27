import 'dart:convert';

import 'package:fhir/r4.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../src.dart';

part 'patient_providers.g.dart';

/// When there is a single patient selected, this provider will hold it
@riverpod
class ActivePatient extends _$ActivePatient {
  @override
  Patient? build() => null;

  void updateFromPatient(Patient newPatient) => state = newPatient;
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

/// Will not be used initially, but will be used for reports. This will be when
/// a specific display needs a group of patients to function on (people with
/// diabetes, children with asthma, etc.)
@riverpod
class ActivePatients extends _$ActivePatients {
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
