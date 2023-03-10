import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'organization_providers.g.dart';

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
@riverpod
class ActiveOrganization extends _$ActiveOrganization {
  @override
  Organization? build() => null;

  void setValue(Organization newValue) => state = newValue;
}
