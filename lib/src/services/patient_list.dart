import 'dart:convert';

import 'package:fhir/r4.dart';
import 'package:fhir_at_rest/r4.dart';
import 'package:fhirlite/src/features/login/login_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../src.dart';

part 'patient_list.g.dart';

@riverpod
class PatientList extends _$PatientList {
  @override
  List<Patient> build({List<String>? parameters}) => [];

  FutureOr<List<Patient>> requestList({List<String>? parameters}) async {
    final client = ref.read(loginProvider);
    if (!(await client.isLoggedIn())) {
      await client.login();
    }
    if (!(await client.isLoggedIn()) || !client.fhirUri.isValid) {
      return [];
    } else {
      final resource = await FhirRequest.search(
        base: client.fhirUri.value!,
        type: R4ResourceType.Patient,
        mimeType: MimeType.json,
        client: client,
        parameters: parameters ?? [],
      ).request();
      if (resource is Bundle) {
        setNextUrl(resource.link);
      }
      final resources = parseRequestResultForType<Patient>(resource);
      ref
          .read(operationOutcomesProvider.notifier)
          .newOperationOutcomes(resources.operationOutcomes);
      state = resources.resources;
      return state;
    }
  }

  FutureOr<List<Patient>> nextPatients({List<String>? parameters}) async {
    final client = ref.read(loginProvider);
    if (!(await client.isLoggedIn())) {
      await client.login();
    }
    if (!(await client.isLoggedIn()) || !client.fhirUri.isValid) {
      return [];
    } else {
      final nextUrl = ref.read(nextUrlProvider);
      if (nextUrl.isNotEmpty) {
        final client = ref.read(loginProvider);
        final response = await client.get(Uri.parse(nextUrl));
        final resource = Resource.fromJson(jsonDecode(response.body));
        if (resource is Bundle) {
          setNextUrl(resource.link);
        }
        final resources = parseRequestResultForType<Patient>(resource);
        ref
            .read(operationOutcomesProvider.notifier)
            .newOperationOutcomes(resources.operationOutcomes);
        state.addAll(resources.resources);
      }
      return state;
    }
  }

  void setNextUrl(List<BundleLink>? links) {
    final index = links?.indexWhere((element) => element.relation == 'next');
    if (index != null && index != -1) {
      ref
          .read(nextUrlProvider.notifier)
          .setValue(links![index].url?.toString() ?? '');
    } else {
      ref.read(nextUrlProvider.notifier).setValue('');
    }
  }
}

@riverpod
class NextUrl extends _$NextUrl {
  @override
  String build() => '';

  void setValue(String newValue) => state = newValue;
}
