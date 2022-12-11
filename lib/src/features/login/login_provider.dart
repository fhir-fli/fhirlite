import 'package:fhir/r4.dart';
import 'package:fhir_auth/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
class LoginProvider extends _$LoginProvider {
  @override
  FhirClient build() {
    return FhirClient(fhirUri: FhirUri('mayjuun.com/fhir'));
  }

  void update(FhirClient client) {
    state = client;
  }

  Future<bool> login() async {
    switch (state.runtimeType) {
      case SecureFhirClient:
        {
          await (state as SecureFhirClient).login();
          return true;
        }
      default:
        return false;
    }
  }
}
