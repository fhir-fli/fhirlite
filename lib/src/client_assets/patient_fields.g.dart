// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientFields _$PatientFieldsFromJson(Map<String, dynamic> json) =>
    PatientFields(
      medicalRecordNumber: json['medicalRecordNumber'] as bool? ?? false,
      socialSecurityNumber: json['socialSecurityNumber'] as bool? ?? false,
      diverLicenseNumber: json['diverLicenseNumber'] as bool? ?? false,
      nationalIdNumber: json['nationalIdNumber'] as bool? ?? false,
      preferredName: json['preferredName'] as bool? ?? false,
      givenNames: json['givenNames'] as bool? ?? false,
      familyName: json['familyName'] as bool? ?? false,
      sexAtBirth: json['sexAtBirth'] as bool? ?? false,
      sexualOrientation: json['sexualOrientation'] as bool? ?? false,
      genderIdentity: json['genderIdentity'] as bool? ?? false,
      pronouns: json['pronouns'] as bool? ?? false,
      birthDate: json['birthDate'] as bool? ?? false,
      phone1: json['phone1'] as bool? ?? false,
      phone2: json['phone2'] as bool? ?? false,
      email1: json['email1'] as bool? ?? false,
      address1: json['address1'] as bool? ?? false,
      race: json['race'] as bool? ?? false,
      ethnicity: json['ethnicity'] as bool? ?? false,
      tribalEntity: json['tribalEntity'] as bool? ?? false,
    );

Map<String, dynamic> _$PatientFieldsToJson(PatientFields instance) =>
    <String, dynamic>{
      'medicalRecordNumber': instance.medicalRecordNumber,
      'socialSecurityNumber': instance.socialSecurityNumber,
      'diverLicenseNumber': instance.diverLicenseNumber,
      'nationalIdNumber': instance.nationalIdNumber,
      'preferredName': instance.preferredName,
      'givenNames': instance.givenNames,
      'familyName': instance.familyName,
      'sexAtBirth': instance.sexAtBirth,
      'sexualOrientation': instance.sexualOrientation,
      'genderIdentity': instance.genderIdentity,
      'pronouns': instance.pronouns,
      'birthDate': instance.birthDate,
      'phone1': instance.phone1,
      'phone2': instance.phone2,
      'email1': instance.email1,
      'address1': instance.address1,
      'race': instance.race,
      'ethnicity': instance.ethnicity,
      'tribalEntity': instance.tribalEntity,
    };
