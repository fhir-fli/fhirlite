import 'package:fhir/r4.dart';
import 'package:fhir_auth/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  @override
  SecureFhirClient build() =>
      SecureFhirClient(fhirUri: FhirUri('http://hapi.fhir.org/baseR4'));

  void setValue(SecureFhirClient newValue) => state = newValue;

  void setSmartClient(
    String iss,
    String clientId,
    String redirectUri,
    Scopes scopes,
  ) {
    state = SmartFhirClient(
      fhirUri: FhirUri(iss),
      clientId: clientId,
      redirectUri: FhirUri(redirectUri),
      scopes: scopes.scopesList(),
    );
  }

  void setGoogleClient(String canonicalFhirUrl, String gcpClientId) async {
    state = GcpFhirClient(
      fhirUri: FhirUri(canonicalFhirUrl),
      clientId: gcpClientId,
    );
  }
}
