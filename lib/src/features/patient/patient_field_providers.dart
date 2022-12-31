import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patient_field_providers.g.dart';

@riverpod
class PatientId extends _$PatientId {
  @override
  String build() {
    return '';
  }
}

@riverpod
class PatientMrn extends _$PatientMrn {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientSsn extends _$PatientSsn {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientDriversLicense extends _$PatientDriversLicense {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientNationalIdNumber extends _$PatientNationalIdNumber {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientPreferredName extends _$PatientPreferredName {
  @override
  HumanName build() {
    return HumanName();
  }
}

@riverpod
class PatientGivenNames extends _$PatientGivenNames {
  @override
  HumanName build() {
    return HumanName();
  }
}

@riverpod
class PatientFamilyName extends _$PatientFamilyName {
  @override
  HumanName build() {
    return HumanName();
  }
}

@riverpod
class PatientSexAtBirth extends _$PatientSexAtBirth {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientSexualOrientation extends _$PatientSexualOrientation {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientGenderIdentity extends _$PatientGenderIdentity {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientPronouns extends _$PatientPronouns {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientBirthDate extends _$PatientBirthDate {
  @override
  Date build() {
    return Date('1900-01-01');
  }
}

@riverpod
class PatientPhone1 extends _$PatientPhone1 {
  @override
  ContactPoint build() {
    return ContactPoint();
  }
}

@riverpod
class PatientPhone2 extends _$PatientPhone2 {
  @override
  ContactPoint build() {
    return ContactPoint();
  }
}

@riverpod
class PatientEmail1 extends _$PatientEmail1 {
  @override
  ContactPoint build() {
    return ContactPoint();
  }
}

@riverpod
class PatientAddress1 extends _$PatientAddress1 {
  @override
  Address build() {
    return Address();
  }
}

@riverpod
class PatientRace extends _$PatientRace {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientEthnicity extends _$PatientEthnicity {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}

@riverpod
class PatientTribalEntity extends _$PatientTribalEntity {
  @override
  FhirExtension build() {
    return FhirExtension();
  }
}
