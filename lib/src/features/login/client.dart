import 'package:fhir/r4.dart';
import 'package:fhir_auth/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client.g.dart';

@riverpod
class Client extends _$Client {
  @override
  FhirClient build() {
    return FhirClient(fhirUri: FhirUri(''));
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

  Future<bool> isLoggedIn() async {
    switch (state.runtimeType) {
      case SecureFhirClient:
        {
          return await (state as SecureFhirClient).isLoggedIn();
        }
      case FhirClient:
        {
          return state.fhirUri.toString() != '';
        }
      default:
        return false;
    }
  }
}

@riverpod
class RememberMe extends _$RememberMe {
  @override
  bool build() => false;
}
