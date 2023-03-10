import 'package:fhir/r4.dart';

/// This is the result we expect from a Search, if it is not an OperationOutcome
/// or a Bundle, then it is an error, and we return that as an OperationOutcome
/// as well
List<Resource> parseRequestResult(Resource result) => result is OperationOutcome
    ? [result]
    : result is Bundle
        ? parseBundle(result)
        : [incorrectResultType(result)];

/// Similar, but this time we specify the type of Resource we expected within
/// the Bundle. It will return a list of Resources, that will either be
/// of the type specified, or an OperationOutcome specifying that the Resource
/// returned was not of the correct type.
List<Resource> parseRequestResultForType<T>(Resource result) =>
    result is OperationOutcome || result is T
        ? [result]
        : result is Bundle
            ? parseBundleForType<T>(result)
            : [incorrectResultWithType<T>(result)];

/// Convenience method to create an OperationOutcome
OperationOutcome incorrectResultType(Resource result, [String? requestName]) =>
    OperationOutcome(
      contained: [result],
      issue: [
        OperationOutcomeIssue(
          code: Code('structure'),
          diagnostics:
              'This ${requestName ?? "request"} did not return any of the following:\n'
              ' 1. A Bundle'
              ' 2. An OperationOutcome'
              ' The return resource is contained in this new and locally created'
              ' OperationOutcome for troubleshooting purposes',
        ),
      ],
    );

/// A convenience method that creates an OperationOutcome specifying the Type
/// that was requested but not returned
OperationOutcome incorrectResultWithType<T>(
  Resource result, [
  String? requestName,
]) =>
    OperationOutcome(
      contained: [result],
      issue: [
        OperationOutcomeIssue(
          code: Code('structure'),
          diagnostics:
              'This ${requestName ?? "request"} did not return any of the following:\n'
              ' 1. The requested type: $T'
              ' 2. A Bundle'
              ' 3. An OperationOutcome'
              ' The return resource is contained in this new and locally created'
              ' OperationOutcome for troubleshooting purposes',
        ),
      ],
    );

/// Extracts all Resources that were returned by the Bundle
List<Resource> parseBundle(Bundle bundle) {
  final resources = <Resource>[];
  if (bundle.type == Code('transaction-response')) {
    for (var entry in bundle.entry ?? <BundleEntry>[]) {
      if (entry.resource != null) {
        resources.add(entry.resource!);
      } else if (entry.response?.outcome != null) {
        resources.add(entry.response!.outcome!);
      } else {
        resources.add(
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
  return resources;
}

/// Extracts all Resources that were returned by the Bundle
List<Resource> parseBundleForType<T>(Bundle bundle) {
  final resources = <Resource>[];
  if (bundle.type == Code('transaction-response')) {
    for (var entry in bundle.entry ?? <BundleEntry>[]) {
      if (entry.resource != null) {
        if (entry.resource is T) {
          resources.add(entry.resource!);
        } else {
          resources.add(incorrectResultWithType<T>(entry.resource!));
        }
      } else if (entry.response?.outcome != null) {
        resources.add(entry.response!.outcome!);
      } else {
        resources.add(
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
  return resources;
}

/// Evaluates the entries in a Bundle and returns the first Resource that is
/// the Type specified
Resource extractFirstTypeFromBundle<T>(Bundle bundle) {
  if (bundle.type == Code('transaction-response')) {
    for (var entry in bundle.entry ?? <BundleEntry>[]) {
      if (entry.resource != null && entry.resource is T) {
        return entry.resource!;
      }
    }
  }
  return bundle;
}
