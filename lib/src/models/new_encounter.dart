import 'package:fhir/r4.dart';
import 'package:fhirlite/src/models/practitioner_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../src.dart';

part 'new_encounter.g.dart';

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
@riverpod
class NewEncounter extends _$NewEncounter {
  @override
  Encounter? build(EncounterType type, [DateTime? dateTime]) {
    final patient = ref.read(activePatientProvider);
    if (patient == null) {
      return null;
    } else {
      final practitioner = ref.read(activePractitionerProvider);
      return Encounter(
        class_: encounterTypeToCoding(type),
        status: Code('in-progress'),
        subject: patient.thisReference,
        serviceProvider: ref.read(activeOrganizationProvider)?.thisReference,
        participant: practitioner == null
            ? null
            : [EncounterParticipant(individual: practitioner.thisReference)],
        period: Period(start: FhirDateTime(dateTime ?? DateTime.now())),
      );
    }
  }
}

enum EncounterType {
  inpatient,
  ambulatory,
  observation,
  emergency,
  virtual,
  homeHealth,
}

Coding encounterTypeToCoding(EncounterType type) {
  final system = FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode');
  switch (type) {
    case EncounterType.inpatient:
      return Coding(
          code: Code('IMP'), system: system, display: 'inpatient encounter');
    case EncounterType.ambulatory:
      return Coding(code: Code('AMB'), system: system, display: 'ambulatory');
    case EncounterType.observation:
      return Coding(
          code: Code('OBSENC'),
          system: system,
          display: 'observation encounter');
    case EncounterType.emergency:
      return Coding(code: Code('EMER'), system: system, display: 'emergency');
    case EncounterType.virtual:
      return Coding(code: Code('VR'), system: system, display: 'virtual');
    case EncounterType.homeHealth:
      return Coding(code: Code('HH'), system: system, display: 'home health');
  }
}
