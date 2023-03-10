// // Package imports:
// import 'package:fhir/r4.dart';
// import 'package:fhir_at_rest/r4.dart' as rest;
// import 'package:fhir_auth/r4.dart';

// Future<Resource> fhirRequestSearch({
//   required String base,
//   required R4ResourceType type,
//   required FhirClient client,
//   required String requestType,
//   List<String>? parameters,
// }) async =>
//     await rest.FhirRequest.search(
//       base: Uri.parse(base),
//       type: type,
//       mimeType: rest.MimeType.json,
//       client: client,
//       parameters: parameters ?? [],
//     ).request();

// Future<Resource> fhirRequestTransaction({
//   required Uri base,
//   required Bundle bundle,
//   required FhirClient client,
//   List<String>? parameters,
// }) async =>
//     await rest.FhirRequest.transaction(
//       base: base,
//       bundle: bundle,
//       mimeType: rest.MimeType.json,
//       client: client,
//       parameters: parameters ?? [],
//     ).request();
