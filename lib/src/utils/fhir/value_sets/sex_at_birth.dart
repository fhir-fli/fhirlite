import 'package:fhir/r4.dart';

final sexAtBirthValueSet = ValueSet.fromJson({
  "resourceType": "ValueSet",
  "meta": {
    "profile": ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-valueset"]
  },
  "url": "mayjuun.com/fhir/ValueSet/sex_at_birth",
  "name": "sex_at_birth",
  "title": "Sex At Birth",
  "status": "draft",
  "publisher": "MayJuun LLC",
  "contact": [
    {
      "name": "MayJuun LLC",
      "telecom": [
        {"system": "email", "value": "info@mayjuun.com", "use": "work"}
      ]
    }
  ],
  "compose": {
    "include": [
      {
        "system": "https://mayjuun.com/fhir/CodeSystem/sex_at_birth",
        "concept": [
          {
            "code": "male",
            "display": "Male",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Masculino"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Mal"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Macho"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Homme"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "female",
            "display": "Female",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Mujer"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Femèl"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Fêmea"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Femme"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "intersex",
            "display": "Intersex",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Intersexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Entèmerve"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Intersex"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Intersexuéré"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "undifferentiated",
            "display": "Undifferentiated",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Indiferenciado"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Endiferansye"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Indiferenciado"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Indifférencié"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "other",
            "display": "Other",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Otro"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Lòt"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Outro"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Autre"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "unknown",
            "display": "Unknown",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Desconocido"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Enkoni"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Desconhecido"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Inconnue"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          }
        ]
      }
    ]
  }
});
