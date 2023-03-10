import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'operation_outcomes.g.dart';

@riverpod
class OperationOutcomes extends _$OperationOutcomes {
  @override
  List<OperationOutcome> build() => <OperationOutcome>[];

  void newOperationOutcome(OperationOutcome operationOutcome) =>
      state.add(operationOutcome);

  void newOperationOutcomes(Iterable<OperationOutcome> operationOutcomes) =>
      state.addAll(operationOutcomes);
}
