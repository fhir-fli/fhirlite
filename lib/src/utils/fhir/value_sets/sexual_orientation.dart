import 'package:fhir/r4.dart';

final sexualOrientationValueSet = ValueSet.fromJson({
  "resourceType": "ValueSet",
  "meta": {
    "profile": ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-valueset"]
  },
  "url": "mayjuun.com/fhir/ValueSet/sexual_orientation",
  "name": "sexual_orientation",
  "title": "Sexual Orientation",
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
        "system": "https://mayjuun.com/fhir/CodeSystem/sexual_orientation",
        "concept": [
          {
            "code": "heterosexual",
            "display": "Straight or Heterosexual",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Recto o heterosexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Dwat oswa etewoseksyèl"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Reto ou heterossexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Droit ou hétérosexuel"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "homosexual",
            "display": "Gay, Lesbian, or Homosexual",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {
                      "url": "content",
                      "valueCode": "Gay, lesbiana u homosexual"
                    }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {
                      "url": "content",
                      "valueCode": "Masisi, madivin, oswa omoseksyèl"
                    }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {
                      "url": "content",
                      "valueCode": "Gay, lésbico ou homossexual"
                    }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {
                      "url": "content",
                      "valueCode": "Gay, lesbien ou homosexuel"
                    }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "bisexual",
            "display": "Bisexual",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Bisexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Bizèks"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Bissexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Bisexuel"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "pansexual",
            "display": "Pansexual",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Pansexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Kransexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Pansexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Pansexuel"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "queer",
            "display": "Queer",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Queer"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Queer"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Queer"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Bizarre"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "asexual",
            "display": "Asexual",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Asexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Aseksyèl"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Assexual"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Asexué"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "unsure",
            "display": "Questioning/not sure",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Interrogatorio/no seguro"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Kesyone/pa sèten"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {
                      "url": "content",
                      "valueCode": "Questionando/não tenho certeza"
                    }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Interroger / pas sûr"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "not-disclose",
            "display": "Choose not to disclose",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Elige no revelar"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Chwazi pa divilge"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Escolha não divulgar"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {
                      "url": "content",
                      "valueCode": "Choisissez de ne pas divulguer"
                    }
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          },
          {
            "code": "other",
            "display": "Other, please describe",
            "_display": {
              "extension": [
                {
                  "extension": [
                    {"url": "lang", "valueCode": "es"},
                    {"url": "content", "valueCode": "Otro, por favor describe"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "ht"},
                    {"url": "content", "valueCode": "Lòt, tanpri dekri"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "pt"},
                    {"url": "content", "valueCode": "Outro, por favor descreva"}
                  ],
                  "url": "http://hl7.org/fhir/StructureDefinition/translation"
                },
                {
                  "extension": [
                    {"url": "lang", "valueCode": "fr"},
                    {"url": "content", "valueCode": "Autre, veuillez décrire"}
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
