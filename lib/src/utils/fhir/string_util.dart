// Package imports:
import 'package:fhir/r4.dart' as r4;
import 'package:validators/sanitizers.dart' as sanitizers;
import 'package:validators/validators.dart' as validators;

import '../locale/locale.dart';

String simpleEnumToString(dynamic value) => value.toString().split('.').last;

int numberOfSlashes(String str) => '/'.allMatches(str).length;

bool isEmail(String str) => validators.isEmail(str);

bool isDouble(String str) => validators.isFloat(str);

bool isInt(String str) => validators.isInt(str);

bool isNumeric(String str) => validators.isNumeric(str);

bool isDate(String str) => validators.isDate(str);

double toDouble(String str) => sanitizers.toDouble(str);

int toInt(String str) => sanitizers.toInt(str) as int;

DateTime? toDate(String str) => sanitizers.toDate(str);

/// Todo: bring it back!
String? localizedString(
  LocaleStates localeStates, {
  String? text,
  r4.Element? element,
  String? locale,
}) {
  if (text == null) {
    return null;
  } else {
    locale ??= localeStates.selectedLocale?.languageCode ??
        localeStates.deviceLocale?.languageCode;
    if (locale == null || element?.extension_ == null) {
      return text;
    } else {
      /// This is the structure of a FHIR extension for a translation, it is a
      /// list of extensions, which is itself a part of an extension in a list of
      /// extensions, that is part of a FHIR Element
      /// "extension": [
      ///   {
      ///     "extension": [
      ///       {
      ///         "url": "lang",
      ///         "valueCode": "es"
      ///       },
      ///       {
      ///         "url": "content",
      ///         "valueCode": "Español"
      ///       }
      ///     ],
      ///     "url": "http://hl7.org/fhir/StructureDefinition/translation"
      ///   }
      /// ]
      /// To find the one we need, we look through the overall list of extensions
      final index = element!.extension_!.indexWhere((element) {
        if (element.extension_ == null) {
          return false;
        } else {
          /// that index points to an extension that has a list of extensions
          return element.extension_!.indexWhere((e) =>

                  /// we check that list of extensions to ensure it contains
                  /// "url": "lang" (as above), and the "valueCode" = the
                  /// locale we're interested in.
                  e.url == r4.FhirUri('lang') &&
                  e.valueCode == r4.Code(locale)) !=
              -1;
        }
      });
      if (index == -1) {
        return text;
      } else {
        final textIndex = element.extension_![index].extension_!
            .indexWhere((element) => element.url == r4.FhirUri('content'));
        if (textIndex == -1) {
          return text;
        } else {
          return (element.extension_![index].extension_![textIndex].valueCode ??
                  text)
              .toString();
        }
      }
    }
  }
}
