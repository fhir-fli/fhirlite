// // Package imports:
// import 'package:fhir/r4.dart';
// import 'package:fhir_auth/r4.dart';

// // Project imports:
// import '../global.dart';

// Future<Resource> putOrPatchResources(
//   FhirClient client,
//   Map<Resource, Code> resourcesMap,
//   Uri base,
//   String canonicalBaseUrl,
// ) async {
//   final entries = <BundleEntry>[];
//   resourcesMap.forEach((resource, method) {
//     final entryRequest = bundleEntryRequest(
//       method: method,
//       resource: resource,
//       canonicalBaseUrl: canonicalBaseUrl,
//     );
//     if (entryRequest != null) {
//       entries.add(entryRequest);
//     }
//   });

//   final bundle = newTransactionBundle().copyWith(entry: entries);

//   return await fhirRequestTransaction(
//     base: base,
//     bundle: bundle,
//     client: client,
//   );
// }
