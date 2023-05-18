import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:fhir/r4.dart';
import 'package:fhirlite/src/src.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'atsign_providers.g.dart';

/// Provider writes to your atsign and returns a message of success or failure
@riverpod
class AtSignUpdateFhirResource extends _$AtSignUpdateFhirResource {
  @override
  Future<SuccessOrErrorMessage> build(Resource resource) async {
    AtClient atClient = AtClientManager.getInstance().atClient;
    AtKey atKey = AtKey();
    atKey.key = resource.path;
    final result = await atClient.put(atKey, resource.toJson());
    if (result) {
      return const SuccessOrErrorMessage.success();
    } else {
      return const SuccessOrErrorMessage.failure('Failure!');
    }
  }
}

/// Provider requests a resource from your atsign
@riverpod
class AtSignGetFhirResource extends _$AtSignGetFhirResource {
  @override
  Future<Resource> build(R4ResourceType resourceType, String id) async {
    AtClient atClient = AtClientManager.getInstance().atClient;
    AtKey atKey = AtKey();
    atKey.key = '${Resource.resourceTypeToString(resourceType)}/$id';
    final AtValue atValue = await atClient.get(atKey);
    if (atValue.value is Map<String, dynamic>) {
      return Resource.fromJson(atValue.value);
    } else {
      return OperationOutcome(issue: [
        OperationOutcomeIssue(
          severity: FhirCode('error'),
          code: FhirCode('unknown'),
          details: CodeableConcept(
              text:
                  'A Map was not returned from the request for the Resource ${atKey.key}.\n'),
          diagnostics: 'Returned Value: ${atValue.value}\n'
              'MetaData: ${atValue.metadata}',
        )
      ]);
    }
  }
}

/// Provider requests a resource from your atsign
@riverpod
class AtSignGetAllFhirResources extends _$AtSignGetAllFhirResources {
  @override
  Future<List<Resource>> build() async {
    AtClient atClient = AtClientManager.getInstance().atClient;
    final allKeys = await atClient.getKeys();
    allKeys.removeWhere((element) =>
        !resourceTypeFromStringMap.keys.contains(element.split('/').first));
    final List<Resource> resourceList = <Resource>[];
    for (final String key in allKeys) {
      final AtKey atKey = AtKey()..key = key;
      final AtValue atValue = await atClient.get(atKey);
      if (atValue.value is Map<String, dynamic>) {
        resourceList.add(Resource.fromJson(atValue.value));
      } else {
        resourceList.add(
          OperationOutcome(
            issue: [
              OperationOutcomeIssue(
                severity: FhirCode('error'),
                code: FhirCode('unknown'),
                details: CodeableConcept(
                    text:
                        'A Map was not returned from the request for the Resource ${atKey.key}.\n'),
                diagnostics: 'Returned Value: ${atValue.value}\n'
                    'MetaData: ${atValue.metadata}',
              ),
            ],
          ),
        );
      }
    }
    return resourceList;
  }
}
