import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fhir_resources_provider.g.dart';

@riverpod
class FhirResources extends _$FhirResources {
  @override
  Set<Resource> build() => {};

  void addResource(Resource resource) {
    final Set<Resource> newState = state;
    newState.add(resource);
    state = newState;
  }

  void addResources(List<Resource> resources) {
    final Set<Resource> newState = state;
    newState.addAll(resources);
    state = newState;
  }

  void removeResource(R4ResourceType resourceType, String id) {
    final newState = state;
    newState.removeWhere((element) =>
        element.resourceType == resourceType && element.fhirId == id);
    state = newState;
  }

  void clear() {
    state = <Resource>{};
  }
}

@riverpod
class FhirString extends _$FhirString {
  @override
  String build() => '';

  void newString(String newValue) => state = newValue;
}
