// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_field_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$PatientIdHash() => r'10175b834370d465e3ea16dba71e63af49dd4825';

/// See also [PatientId].
final patientIdProvider = AutoDisposeNotifierProvider<PatientId, String>(
  PatientId.new,
  name: r'patientIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$PatientIdHash,
);
typedef PatientIdRef = AutoDisposeNotifierProviderRef<String>;

abstract class _$PatientId extends AutoDisposeNotifier<String> {
  @override
  String build();
}

String _$PatientMrnHash() => r'8db5ca5c37ff772bcf496e9757760b646ab075f8';

/// See also [PatientMrn].
final patientMrnProvider =
    AutoDisposeNotifierProvider<PatientMrn, FhirExtension>(
  PatientMrn.new,
  name: r'patientMrnProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$PatientMrnHash,
);
typedef PatientMrnRef = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientMrn extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientSsnHash() => r'a0835728e958cfae1e6e73df61b653cb304fe1b7';

/// See also [PatientSsn].
final patientSsnProvider =
    AutoDisposeNotifierProvider<PatientSsn, FhirExtension>(
  PatientSsn.new,
  name: r'patientSsnProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$PatientSsnHash,
);
typedef PatientSsnRef = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientSsn extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientDriversLicenseHash() =>
    r'3904245b83a38c05adb2badb7902b991c138cf56';

/// See also [PatientDriversLicense].
final patientDriversLicenseProvider =
    AutoDisposeNotifierProvider<PatientDriversLicense, FhirExtension>(
  PatientDriversLicense.new,
  name: r'patientDriversLicenseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientDriversLicenseHash,
);
typedef PatientDriversLicenseRef
    = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientDriversLicense
    extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientNationalIdNumberHash() =>
    r'b137d10530d010ed43484db16a6b7174d2cf19c2';

/// See also [PatientNationalIdNumber].
final patientNationalIdNumberProvider =
    AutoDisposeNotifierProvider<PatientNationalIdNumber, FhirExtension>(
  PatientNationalIdNumber.new,
  name: r'patientNationalIdNumberProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientNationalIdNumberHash,
);
typedef PatientNationalIdNumberRef
    = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientNationalIdNumber
    extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientPreferredNameHash() =>
    r'cd2aed37f970bca2314f7b5b214ae951674f1e4d';

/// See also [PatientPreferredName].
final patientPreferredNameProvider =
    AutoDisposeNotifierProvider<PatientPreferredName, HumanName>(
  PatientPreferredName.new,
  name: r'patientPreferredNameProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientPreferredNameHash,
);
typedef PatientPreferredNameRef = AutoDisposeNotifierProviderRef<HumanName>;

abstract class _$PatientPreferredName extends AutoDisposeNotifier<HumanName> {
  @override
  HumanName build();
}

String _$PatientGivenNamesHash() => r'cd023b2f132de2a8d9c0109e185b4af9511ad108';

/// See also [PatientGivenNames].
final patientGivenNamesProvider =
    AutoDisposeNotifierProvider<PatientGivenNames, HumanName>(
  PatientGivenNames.new,
  name: r'patientGivenNamesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientGivenNamesHash,
);
typedef PatientGivenNamesRef = AutoDisposeNotifierProviderRef<HumanName>;

abstract class _$PatientGivenNames extends AutoDisposeNotifier<HumanName> {
  @override
  HumanName build();
}

String _$PatientFamilyNameHash() => r'cfb7b1ae86a4d4d0a335ac685b6be32c7f7fdbd6';

/// See also [PatientFamilyName].
final patientFamilyNameProvider =
    AutoDisposeNotifierProvider<PatientFamilyName, HumanName>(
  PatientFamilyName.new,
  name: r'patientFamilyNameProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientFamilyNameHash,
);
typedef PatientFamilyNameRef = AutoDisposeNotifierProviderRef<HumanName>;

abstract class _$PatientFamilyName extends AutoDisposeNotifier<HumanName> {
  @override
  HumanName build();
}

String _$PatientSexAtBirthHash() => r'18ef0c51282612b806ed6c1516fd41aed50ad960';

/// See also [PatientSexAtBirth].
final patientSexAtBirthProvider =
    AutoDisposeNotifierProvider<PatientSexAtBirth, FhirExtension>(
  PatientSexAtBirth.new,
  name: r'patientSexAtBirthProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientSexAtBirthHash,
);
typedef PatientSexAtBirthRef = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientSexAtBirth extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientSexualOrientationHash() =>
    r'0fa203e7864d1510f011a83f24e9f8dab92f3cbe';

/// See also [PatientSexualOrientation].
final patientSexualOrientationProvider =
    AutoDisposeNotifierProvider<PatientSexualOrientation, FhirExtension>(
  PatientSexualOrientation.new,
  name: r'patientSexualOrientationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientSexualOrientationHash,
);
typedef PatientSexualOrientationRef
    = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientSexualOrientation
    extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientGenderIdentityHash() =>
    r'4df06a13dc2811b5c77529c6705d48fba3352b71';

/// See also [PatientGenderIdentity].
final patientGenderIdentityProvider =
    AutoDisposeNotifierProvider<PatientGenderIdentity, FhirExtension>(
  PatientGenderIdentity.new,
  name: r'patientGenderIdentityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientGenderIdentityHash,
);
typedef PatientGenderIdentityRef
    = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientGenderIdentity
    extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientPronounsHash() => r'8e722ebc87169c0969d8c883e8d182f823a13492';

/// See also [PatientPronouns].
final patientPronounsProvider =
    AutoDisposeNotifierProvider<PatientPronouns, FhirExtension>(
  PatientPronouns.new,
  name: r'patientPronounsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientPronounsHash,
);
typedef PatientPronounsRef = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientPronouns extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientBirthDateHash() => r'eee7343263e68c8cb1ee4d33230889691348c30b';

/// See also [PatientBirthDate].
final patientBirthDateProvider =
    AutoDisposeNotifierProvider<PatientBirthDate, Date>(
  PatientBirthDate.new,
  name: r'patientBirthDateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientBirthDateHash,
);
typedef PatientBirthDateRef = AutoDisposeNotifierProviderRef<Date>;

abstract class _$PatientBirthDate extends AutoDisposeNotifier<Date> {
  @override
  Date build();
}

String _$PatientPhone1Hash() => r'8fb4f22c03f0144272c9cda6131ecb7792db65a8';

/// See also [PatientPhone1].
final patientPhone1Provider =
    AutoDisposeNotifierProvider<PatientPhone1, ContactPoint>(
  PatientPhone1.new,
  name: r'patientPhone1Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientPhone1Hash,
);
typedef PatientPhone1Ref = AutoDisposeNotifierProviderRef<ContactPoint>;

abstract class _$PatientPhone1 extends AutoDisposeNotifier<ContactPoint> {
  @override
  ContactPoint build();
}

String _$PatientPhone2Hash() => r'4d5f56439e03549d670ff5dd7d1a2b5feeedfe12';

/// See also [PatientPhone2].
final patientPhone2Provider =
    AutoDisposeNotifierProvider<PatientPhone2, ContactPoint>(
  PatientPhone2.new,
  name: r'patientPhone2Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientPhone2Hash,
);
typedef PatientPhone2Ref = AutoDisposeNotifierProviderRef<ContactPoint>;

abstract class _$PatientPhone2 extends AutoDisposeNotifier<ContactPoint> {
  @override
  ContactPoint build();
}

String _$PatientEmail1Hash() => r'519f4b29816ae39647ad5bdad2b7656de0ac35da';

/// See also [PatientEmail1].
final patientEmail1Provider =
    AutoDisposeNotifierProvider<PatientEmail1, ContactPoint>(
  PatientEmail1.new,
  name: r'patientEmail1Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientEmail1Hash,
);
typedef PatientEmail1Ref = AutoDisposeNotifierProviderRef<ContactPoint>;

abstract class _$PatientEmail1 extends AutoDisposeNotifier<ContactPoint> {
  @override
  ContactPoint build();
}

String _$PatientAddress1Hash() => r'c4a48f99dbe6708d244f2a5db299d80b3d77ea03';

/// See also [PatientAddress1].
final patientAddress1Provider =
    AutoDisposeNotifierProvider<PatientAddress1, Address>(
  PatientAddress1.new,
  name: r'patientAddress1Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientAddress1Hash,
);
typedef PatientAddress1Ref = AutoDisposeNotifierProviderRef<Address>;

abstract class _$PatientAddress1 extends AutoDisposeNotifier<Address> {
  @override
  Address build();
}

String _$PatientRaceHash() => r'02c40d91b5341ec493078d1df1a7f3d3693bcb16';

/// See also [PatientRace].
final patientRaceProvider =
    AutoDisposeNotifierProvider<PatientRace, FhirExtension>(
  PatientRace.new,
  name: r'patientRaceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$PatientRaceHash,
);
typedef PatientRaceRef = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientRace extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientEthnicityHash() => r'b3a143082c07e740b6fa32aacee26cbfa77492ff';

/// See also [PatientEthnicity].
final patientEthnicityProvider =
    AutoDisposeNotifierProvider<PatientEthnicity, FhirExtension>(
  PatientEthnicity.new,
  name: r'patientEthnicityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientEthnicityHash,
);
typedef PatientEthnicityRef = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientEthnicity extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}

String _$PatientTribalEntityHash() =>
    r'71749780b66d3e6360262be02ada8e19e411960c';

/// See also [PatientTribalEntity].
final patientTribalEntityProvider =
    AutoDisposeNotifierProvider<PatientTribalEntity, FhirExtension>(
  PatientTribalEntity.new,
  name: r'patientTribalEntityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$PatientTribalEntityHash,
);
typedef PatientTribalEntityRef = AutoDisposeNotifierProviderRef<FhirExtension>;

abstract class _$PatientTribalEntity
    extends AutoDisposeNotifier<FhirExtension> {
  @override
  FhirExtension build();
}
