import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'practitioner_providers.g.dart';

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
@riverpod
class ActivePractitioner extends _$ActivePractitioner {
  @override
  Practitioner? build() => null;

  void setValue(Practitioner newValue) => state = newValue;
}
