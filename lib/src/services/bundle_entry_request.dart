import 'package:fhir/r4.dart';

BundleEntry? bundleEntryRequest({
  required Code method,
  String? resourcePath,
  String? canonicalBaseUrl,
  Resource? resource,
}) {
  final methodString = method.toString();
  switch (methodString) {
    case 'GET':
      return resourcePath == null
          ? null
          : BundleEntry(
              request: BundleRequest(
                method: Code('GET'),
                url: FhirUri(resourcePath),
              ),
            );
    case 'POST':
      return resource == null
          ? null
          : BundleEntry(
              resource: resource,
              fullUrl: resource.id == null || resource.path.contains('/null')
                  ? null
                  : FhirUri('$canonicalBaseUrl/${resource.path}'),
              request: BundleRequest(
                method: Code('POST'),
                url: FhirUri(resource.path),
              ),
            );
    case 'PUT':
      return resource == null
          ? null
          : BundleEntry(
              resource: resource,
              fullUrl: resource.id == null || resource.path.contains('/null')
                  ? null
                  : FhirUri('$canonicalBaseUrl/${resource.path}'),
              request: BundleRequest(
                method: Code('PUT'),
                url: FhirUri(resource.path),
              ),
            );
    case 'PATCH':
      return resource == null
          ? null
          : BundleEntry(
              resource: resource,
              fullUrl: resource.id == null || resource.path.contains('/null')
                  ? null
                  : FhirUri('$canonicalBaseUrl/${resource.path}'),
              request: BundleRequest(
                method: Code('PATCH'),
                url: FhirUri(resource.path),
              ),
            );
    case 'get':
      return resourcePath == null
          ? null
          : BundleEntry(
              request: BundleRequest(
                method: Code('GET'),
                url: FhirUri(resourcePath),
              ),
            );
    case 'post':
      return resource == null
          ? null
          : BundleEntry(
              resource: resource,
              fullUrl: resource.id == null || resource.path.contains('/null')
                  ? null
                  : FhirUri('$canonicalBaseUrl/${resource.path}'),
              request: BundleRequest(
                method: Code('POST'),
                url: FhirUri(resource.path),
              ),
            );
    case 'put':
      return resource == null
          ? null
          : BundleEntry(
              resource: resource,
              fullUrl: resource.id == null || resource.path.contains('/null')
                  ? null
                  : FhirUri('$canonicalBaseUrl/${resource.path}'),
              request: BundleRequest(
                method: Code('PUT'),
                url: FhirUri(resource.path),
              ),
            );
    case 'patch':
      return resource == null
          ? null
          : BundleEntry(
              resource: resource,
              fullUrl: resource.id == null || resource.path.contains('/null')
                  ? null
                  : FhirUri('$canonicalBaseUrl/${resource.path}'),
              request: BundleRequest(
                method: Code('PATCH'),
                url: FhirUri(resource.path),
              ),
            );
    default:
      return null;
  }
}
