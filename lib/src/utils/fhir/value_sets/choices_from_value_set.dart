import 'package:fhir/r4.dart';
import 'package:fhirlite/src/utils/fhir/string_util.dart';

import '../../locale/locale.dart';

Map<String, String?> choicesFromValueSet(
  LocaleStates localeStates,
  ValueSet valueSet,
) {
  final choiceMap = <String, String?>{};
  valueSet.compose?.include.first.concept?.forEach((element) {
    if (element.code != null) {
      choiceMap[element.code.toString()] = localizedString(
        localeStates,
        text: element.display,
        element: element.displayElement,
      );
    }
  });
  return choiceMap;
}

String? valueSetCodeToDisplay(
  LocaleStates localeStates,
  List<FhirExtension>? extensions,
  ValueSet valueSet,
) {
  if (extensions == null) {
    return null;
  } else {
    final url =
        valueSet.url.toString().replaceAll('ValueSet', 'StructureDefinition');
    final codeIndex =
        extensions.indexWhere((element) => element.url.toString() == url);
    final code = codeIndex == -1
        ? null
        : extensions[codeIndex].valueCodeableConcept?.coding?.first.code;
    final index = valueSet.compose?.include.first.concept
        ?.indexWhere((element) => element.code == code);
    if (index == null || index == -1) {
      return null;
    } else {
      final ValueSetConcept valueSetConcept =
          valueSet.compose!.include.first.concept![index];
      return localizedString(
        localeStates,
        text: valueSetConcept.display.toString(),
        element: valueSetConcept.displayElement,
      );
    }
  }
}
