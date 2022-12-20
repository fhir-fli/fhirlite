import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patient_providers.g.dart';

@riverpod
class ActivePatient extends _$ActivePatient {
  @override
  Patient? build() => null;

  void updateFromPatient(Patient newPatient) => state = newPatient;
}

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
}
