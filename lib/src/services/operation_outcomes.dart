// Package imports:
import 'package:fhir/r4.dart';

OperationOutcome operationOutcome(String issue, {String? diagnostics}) =>
    OperationOutcome(issue: [
      OperationOutcomeIssue(
        severity: Code('error'),
        code: Code('value'),
        details: CodeableConcept(text: issue),
        diagnostics: diagnostics,
      )
    ]);

OperationOutcome operationOutcomeError(Object e, StackTrace stack) =>
    operationOutcome('There was an error getting Task resources: $e',
        diagnostics:
            'The following was the stack when the error was thrown: $stack');
