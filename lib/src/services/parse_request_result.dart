import 'package:fhir/r4.dart';

/// When a Get request (including Search) is made to a FHIR server, the return
/// results are almost always going to be an OperationOutcome (meaning an error
/// has occurred), a single Resource of type T (if you, for instance, only
/// requested Patient/12345), or, if you did any sort of request for more than
/// one resource, it should return a Bundle, this checks and parses out your
/// result to only include OperationOutcomes or type T, and retrieves all
/// resources form the Bundle (as long as they are type T)
ReturnResults<T> parseRequestResultForType<T>(Resource result) =>
    result is OperationOutcome
        ? ReturnResults<T>(operationOutcomes: [result])
        : result is T
            ? ReturnResults<T>(resources: [result as T])
            : result is Bundle
                ? parseBundleForType<T>(result)
                : ReturnResults<T>(
                    operationOutcomes: [incorrectResultWithType<T>(result)]);

/// A convenience method that creates an OperationOutcome specifying the Type
/// that was requested but not returned
OperationOutcome incorrectResultWithType<T>(Resource result) =>
    OperationOutcome(
      contained: [result],
      issue: [
        OperationOutcomeIssue(
          code: Code('structure'),
          diagnostics: 'This request did not return any of the following:\n'
              ' 1. The requested type: $T'
              ' 2. A Bundle'
              ' 3. An OperationOutcome'
              ' The return resource is contained in this new and locally created'
              ' OperationOutcome for troubleshooting purposes',
        ),
      ],
    );

OperationOutcome incorrectResultType<T>(Resource result) => OperationOutcome(
      contained: [result],
      issue: [
        OperationOutcomeIssue(
          code: Code('structure'),
          diagnostics:
              'This request returned a bundle, but this resource is not:\n'
              ' 1. The requested type: $T'
              ' 2. An OperationOutcome'
              ' The return resource is contained in this new and locally created'
              ' OperationOutcome for troubleshooting purposes',
        ),
      ],
    );

/// Extracts all Resources that were returned by the Bundle
ReturnResults<T> parseBundleForType<T>(Bundle bundle) {
  final returnResults = ReturnResults<T>();
  if (bundle.type == Code('transaction-response')) {
    for (var entry in bundle.entry ?? <BundleEntry>[]) {
      if (entry.resource != null) {
        if (entry.resource is T) {
          returnResults.resources.add(entry.resource! as T);
        } else {
          returnResults.operationOutcomes
              .add(incorrectResultType<T>(entry.resource!));
        }
      } else if (entry.response?.outcome != null) {
        returnResults.operationOutcomes
            .add(entry.response!.outcome! as OperationOutcome);
      } else {
        returnResults.operationOutcomes.add(
          OperationOutcome(
            issue: [
              OperationOutcomeIssue(
                code: Code('informational'),
                diagnostics: 'Status: ${entry.response?.status ?? "none"}'
                    '\nLocation: ${entry.response?.location ?? "none"}',
              ),
            ],
          ),
        );
      }
    }
  }
  return returnResults;
}

class ReturnResults<T> {
  ReturnResults(
      {List<T>? resources, List<OperationOutcome>? operationOutcomes}) {
    this.resources = resources ?? [];
    this.operationOutcomes = operationOutcomes ?? [];
  }

  late List<T> resources;
  late List<OperationOutcome> operationOutcomes;
}
