import 'dart:convert';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:fhir/r4.dart';
import 'package:fhirlite/src/src.dart';

/// Provider writes to your atsign and returns a message of success or failure
Future<SuccessOrErrorMessage> atSignUpdateFhirResource(
    Resource resource) async {
  final newResource = resource.newIdIfNoId();
  AtClient atClient = AtClientManager.getInstance().atClient;
  AtKey atKey = AtKey();
  atKey
    ..key = newResource.fhirId
    ..namespace = 'fhir';
  final result = await atClient.put(atKey, jsonEncode(newResource.toJson()));
  if (result) {
    return const SuccessOrErrorMessage.success();
  } else {
    return const SuccessOrErrorMessage.failure('Failure!');
  }
}

/// Provider requests a resource from your atsign
Future<Resource> atSignGetFhirResource(
    R4ResourceType resourceType, String id) async {
  AtClient atClient = AtClientManager.getInstance().atClient;
  AtKey atKey = AtKey();
  atKey.key = '${Resource.resourceTypeToString(resourceType)}/$id';
  final AtValue atValue = await atClient.get(atKey);
  if (atValue.value is! String) {
    return operationOutcome(atKey, atValue);
  } else {
    final maybeMap = jsonDecode(atValue.value);
    if (maybeMap is Map<String, dynamic> &&
        maybeMap['resourceType'] is String &&
        resourceTypeFromStringMap.keys.contains(maybeMap['resourceType'])) {
      return Resource.fromJson(maybeMap);
    } else {
      return operationOutcome(atKey, atValue);
    }
  }
}

/// Provider requests all resources from your atsign
Future<List<Resource>> atSignGetAllFhirResources() async {
  AtClient atClient = AtClientManager.getInstance().atClient;
  final allKeys = await atClient.getAtKeys();
  print(allKeys);
  allKeys.removeWhere((element) {
    if (element.key == null) {
      return false;
    } else {
      print(element.key!.contains('.fhir@'));
      return false;
    }
  });
  print(allKeys);
  final List<Resource> resourceList = <Resource>[];
  for (final AtKey atKey in allKeys) {
    print(atKey.key);
    final AtValue atValue = await atClient.get(atKey);
    if (atValue.value is! String) {
      resourceList.add(operationOutcome(atKey, atValue));
    } else {
      final maybeMap = jsonDecode(atValue.value);
      if (maybeMap is Map<String, dynamic> &&
          maybeMap['resourceType'] is String &&
          resourceTypeFromStringMap.keys.contains(maybeMap['resourceType'])) {
        resourceList.add(Resource.fromJson(maybeMap));
      } else {
        resourceList.add(operationOutcome(atKey, atValue));
      }
    }
  }
  return resourceList;
}

OperationOutcome operationOutcome(AtKey atKey, AtValue atValue) =>
    OperationOutcome(issue: [
      OperationOutcomeIssue(
        severity: FhirCode('error'),
        code: FhirCode('unknown'),
        details: CodeableConcept(
            text: 'A Non-parseable object was returned from the request for '
                'the Resource ${atKey.key}.\n'),
        diagnostics: 'Returned Value: ${atValue.value}\n'
            'MetaData: ${atValue.metadata}',
      )
    ]);
