import 'package:json_annotation/json_annotation.dart';

part 'patient_fields.g.dart';

@JsonSerializable()
class PatientFields {
  PatientFields({
    this.medicalRecordNumber = false,
    this.socialSecurityNumber = false,
    this.diverLicenseNumber = false,
    this.nationalIdNumber = false,
    this.preferredName = false,
    this.givenNames = false,
    this.familyName = false,
    this.sexAtBirth = false,
    this.sexualOrientation = false,
    this.genderIdentity = false,
    this.pronouns = false,
    this.birthDate = false,
    this.phone1 = false,
    this.phone2 = false,
    this.email1 = false,
    this.address1 = false,
    this.race = false,
    this.ethnicity = false,
    this.tribalEntity = false,
  });

  factory PatientFields.fromJson(Map<String, dynamic> json) =>
      _$PatientFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$PatientFieldsToJson(this);

  bool medicalRecordNumber;
  bool socialSecurityNumber;
  bool diverLicenseNumber;
  bool nationalIdNumber;
  bool preferredName;
  bool givenNames;
  bool familyName;
  bool sexAtBirth;
  bool sexualOrientation;
  bool genderIdentity;
  bool pronouns;
  bool birthDate;
  bool phone1;
  bool phone2;
  bool email1;
  bool address1;
  bool race;
  bool ethnicity;
  bool tribalEntity;
}
