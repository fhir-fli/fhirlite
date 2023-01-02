// import 'package:fhir/r4.dart';

// enum GenderIdentity {
//   cisMan,
//   cisWoman,
//   transMan,
//   transWoman,
//   transNonspecific,
//   nonBinary,
//   genderQueer,
//   twoSpirit,
//   unsure,
//   notDisclose,
//   other,
//   unknown,
// }

// String genderIdentityToString(GenderIdentity? genderIdentity) {
//   switch (genderIdentity) {
//     case GenderIdentity.cisMan:
//       return 'Cisgender Man';
//     case GenderIdentity.cisWoman:
//       return 'Cisgender Woman';
//     case GenderIdentity.transMan:
//       return 'Transgender Man';
//     case GenderIdentity.transWoman:
//       return 'Transgender Woman';
//     case GenderIdentity.transNonspecific:
//       return 'Transgender Non-specific';
//     case GenderIdentity.nonBinary:
//       return 'Non-binary';
//     case GenderIdentity.genderQueer:
//       return 'Gender-queer';
//     case GenderIdentity.twoSpirit:
//       return 'Two-spirit (must be Native or Indigenous)';
//     case GenderIdentity.unsure:
//       return 'Questioning/not sure';
//     case GenderIdentity.notDisclose:
//       return 'Choose not to disclose';
//     case GenderIdentity.other:
//       return 'Other, please describe';
//     default:
//       return 'Unknown';
//   }
// }

// FhirExtension genderIdentityToExtension(GenderIdentity? genderIdentity) {
//   switch (genderIdentity) {
//     case GenderIdentity.cisMan:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.cisWoman:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.transMan:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.transWoman:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.transNonspecific:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.nonBinary:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.genderQueer:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.twoSpirit:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.unsure:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.notDisclose:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.other:
//       // TODO: Handle this case.
//       break;
//     case GenderIdentity.unknown:
//       // TODO: Handle this case.
//       break;
//   }
// }

// final list = [
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("cis-man"),
//       display: "Cisgender Man",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("cis-woman"),
//       display: "Cisgender Woman",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("trans-man"),
//       display: "Transgender Man",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("trans-woman"),
//       display: "Transgender Woman",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("trans-nonspecific"),
//       display: "Transgender Non-specific",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("non-binary"),
//       display: "Non-binary",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("gender-queer"),
//       display: "Gender-queer",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("two-spirit"),
//       display: "Two-spirit (must be Native or Indigenous)",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("unsure"),
//       display: "Questioning/not sure",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("not-disclose"),
//       display: "Choose not to disclose",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("other"),
//       display: "Other please describe",
//     ),
//   ),
//   FhirExtension(
//     url:
//         FhirUri('https://mayjuun.com/fhir/StructureDefinition/gender_identity'),
//     valueCoding: Coding(
//       system: FhirUri('https://mayjuun.com/fhir/ValueSet/gender_identity'),
//       code: Code("unknown"),
//       display: "Unknown",
//     ),
//   ),
// ];

// final concept = [
//   {
//     "code": "cis-man",
//     "display": "Cisgender Man",
//   },
//   {
//     "code": "cis-woman",
//     "display": "Cisgender Woman",
//   },
//   {
//     "code": "trans-man",
//     "display": "Transgender Man",
//   },
//   {
//     "code": "trans-woman",
//     "display": "Transgender Woman",
//   },
//   {
//     "code": "trans-nonspecific",
//     "display": "Transgender Non-specific",
//   },
//   {
//     "code": "non-binary",
//     "display": "Non-binary",
//   },
//   {
//     "code": "gender-queer",
//     "display": "Gender-queer",
//   },
//   {
//     "code": "two-spirit",
//     "display": "Two-spirit (must be Native or Indigenous)",
//   },
//   {
//     "code": "unsure",
//     "display": "Questioning/not sure",
//   },
//   {
//     "code": "not-disclose",
//     "display": "Choose not to disclose",
//   },
//   {
//     "code": "other",
//     "display": "Other, please describe",
//   },
//   {
//     "code": "unknown",
//     "display": "Unknown",
//   }
// ];
