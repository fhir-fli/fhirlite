// // Dart imports:
// import 'dart:convert';

// // Package imports:
// import 'package:fhir/r4.dart';
// import 'package:flutter/material.dart' as material;
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';

// import '../global.dart';

// final operationOutcomeProvider =
//     StateProvider<List<OperationOutcome>>((ref) => <OperationOutcome>[]);

// class FhirAsyncError {
//   const FhirAsyncError({required this.label, this.resource, this.misc});

//   final String label;
//   final Resource? resource;
//   final dynamic misc;
// }

// final fhirServerProvider = StateNotifierProvider<FhirServerStateNotifier, bool>(
//     (ref) => FhirServerStateNotifier(ref));

// class FhirServerStateNotifier extends StateNotifier<bool> {
//   FhirServerStateNotifier(this.ref) : super(true);

//   final Ref ref;

//   /// ***********************************************************************
//   /// Error Handling
//   /// ***********************************************************************

//   void addOperationOutcome(OperationOutcome operationOutcome) =>
//       ref.read(operationOutcomeProvider.notifier).state = [
//         ...ref.read(operationOutcomeProvider),
//         operationOutcome,
//       ];

//   Future<void> sendToSentry(FhirAsyncError error) async {
//     print(error.label);
//     Sentry.captureException(
//       error.resource,
//       hint: SentryEvent(
//         extra: error.resource?.toJson(),
//         message: SentryMessage(error.label),
//       ),
//     );
//   }

//   /// ***********************************************************************
//   /// Public Methods
//   /// ***********************************************************************

//   static const numberOfTries = 8;
//   static const _timeout = [
//     200,
//     400,
//     800,
//     1600,
//     3200,
//     6400,
//     12800,
//     25600,
//     51200,
//   ];

//   Coding percentCompleteCoding() => Coding(
//         system: FhirUri('http://loinc.org'),
//         code: Code('90897-0'),
//         display: 'Percent of task completed',
//       );

//   List<FhirExtension> percentCompleteExtension() => [
//         FhirExtension(
//           valueCoding: percentCompleteCoding(),
//         ),
//       ];

//   Task _updatePercentCompleteInTask() {
//     /// Get old task
//     var oldTask = ref.read(activeTaskProvider);

//     /// Task Params
//     final taskParams = TaskParams(taskPath: oldTask.path);

//     /// Full List of Questionnaires
//     final questionnaireList = ref.read(questionnaireListProvider(taskParams));

//     /// Place-keepers for calculations
//     int numberAnswered = 0;
//     int numberQuestions = 0;
//     questionnaireList.forEach((element) {
//       /// For each Questionnaire, add to the totals
//       final numbers = ref.read(numbersCompleteProvider(element));
//       numberAnswered += numbers.first;
//       numberQuestions += numbers.last;
//     });

//     /// Calculate percent complete
//     final percentComplete =
//         Integer(((numberAnswered / numberQuestions) * 100).toInt());

//     /// Find if there's a percentComplete in the _status (statusElement)
//     final extensionPercentCompleteIndex = oldTask.extension_?.indexWhere(
//         (element) => element.url.toString() == 'https://loinc.org/90897-0/');

//     /// Find if there's a percentComplete in the outputs
//     final outputPercentCompleteIndex = oldTask.output?.indexWhere((element) =>
//         element.type.coding?.first.system.toString() == 'http://loinc.org' &&
//         element.type.coding?.first.code.toString() == '90897-0');

//     /// If there is one for _status
//     if (extensionPercentCompleteIndex != null &&
//         extensionPercentCompleteIndex != -1) {
//       oldTask = oldTask.copyWith(
//         extension_: [
//           /// Replace it but keep all of the elements in the extension list
//           /// before and afer it the same
//           ...oldTask.extension_!.sublist(0, extensionPercentCompleteIndex),

//           /// Only change the one that has the percentage, and only change
//           /// the percentage value, none of the extensions along with it need
//           /// to be updated
//           oldTask.extension_![extensionPercentCompleteIndex]
//               .copyWith(valueInteger: percentComplete),
//           ...oldTask.extension_!.sublist(extensionPercentCompleteIndex + 1),
//         ],
//       );
//     } else {
//       /// If not, go ahead and just add it as a new entry to the
//       /// _status (statusElement)
//       oldTask = oldTask.copyWith(extension_: [
//         FhirExtension(
//           url: FhirUri('https://loinc.org/90897-0/'),
//           valueInteger: percentComplete,
//         ),
//         if (oldTask.extension_ != null) ...oldTask.extension_!
//       ]);
//     }

//     /// If it already exists as an output
//     if (outputPercentCompleteIndex != null &&
//         outputPercentCompleteIndex != -1) {
//       oldTask = oldTask.copyWith(
//         output: [
//           /// We leave the outputs before and after it alone
//           ...oldTask.output!.sublist(0, outputPercentCompleteIndex),

//           /// And just update the percentComplete value, leaving any extensions
//           /// in place as they are
//           oldTask.output![outputPercentCompleteIndex]
//               .copyWith(valueInteger: percentComplete),
//           ...oldTask.output!.sublist(outputPercentCompleteIndex + 1),
//         ],
//       );
//     } else {
//       /// Otherwise we have to create an entirely new entry and include the
//       /// percent complete there
//       oldTask = oldTask.copyWith(
//         output: [
//           TaskOutput(
//             type: CodeableConcept(
//               coding: [
//                 percentCompleteCoding(),
//               ],
//               text: 'Percent of task completed',
//             ),
//             valueInteger: percentComplete,
//           ),
//           if (oldTask.output != null) ...oldTask.output!,
//         ],
//       );
//     }
//     return oldTask;
//   }

//   Future<void> timeout(int i) async {
//     await Future.delayed(Duration(milliseconds: _timeout[i]));
//   }

//   List<QuestionnaireResponse> generateAllResponses() => ref
//       .read(questionnaireListProvider(ref.read(activeTaskParamsProvider)))
//       .map((qParams) => ref
//           .read(questionnaireEventsProvider.notifier)
//           .generateQuestionnaireResponse(qParams))
//       .toList();

//   Future<List<Resource>> updateAllResponsesInCloud(
//           material.BuildContext context) async =>
//       await updateResponseInCloud(context, generateAllResponses());

//   Future<List<Resource>> updateResponseInCloud(
//       material.BuildContext context, List<Resource> resources) async {
//     final taskIsComplete =
//         ref.read(activeTaskProvider).status == Code('completed');
//     if (!taskIsComplete) {
//       final newResources = <Resource>[];
//       newResources.addAll(resources);
//       newResources.add(_updatePercentCompleteInTask());

//       if (ref.read(isDemoEnabledProvider)) {
//         print('demo mode, updateResponseInCloud skipped');
//         return [];
//       }
//       for (var i = 0; i < numberOfTries; i++) {
//         final returnValue = await _pushToCloud(newResources);
//         if (returnValue.isNotEmpty &&
//             !(returnValue.length == 1 &&
//                 returnValue.first is OperationOutcome &&
//                 (returnValue.first as OperationOutcome)
//                         .issue
//                         .first
//                         .code
//                         .toString() !=
//                     'informational')) {
//           //  showStyledSnackbar(context,
//           //   message:
//           //       'Updated QuestionnaireResponse In Cloud: ${resources.first.path}',
//           //   snackbarType: SnackbarType.success,
//           // );
//           return returnValue;
//         } else {
//           await timeout(i);
//         }
//       }
//       showStyledSnackbar(
//         context,
//         message: 'Failed to Update Response In Cloud',
//         snackbarType: SnackbarType.error,
//       );
//       return <Resource>[];
//     } else {
//       return <Resource>[];
//     }
//   }

//   Future<bool> updatePatientInfoInCloud(material.BuildContext context) async {
//     final patient = ref.read(activePatientProvider);
//     var relatedPerson = ref.read(activeRelatedPersonProvider);
//     var practitioner = ref.read(activePractitionerProvider);
//     var organization = ref.read(activeOrganizationProvider);
//     final resourcesToUpdate = <Resource>[patient];

//     if (relatedPerson != null) {
//       if (relatedPerson.id == null) {
//         relatedPerson = relatedPerson.newIdIfNoId() as RelatedPerson;
//         ref.read(activeUserProvider.notifier).state =
//             FhirCuestionarioPerson.relatedPerson(
//                 patient: patient, relatedPerson: relatedPerson);
//       }
//       resourcesToUpdate.add(relatedPerson);
//     }
//     if (practitioner != null) {
//       if (practitioner.id == null) {
//         practitioner = practitioner.newIdIfNoId() as Practitioner;
//         ref.read(activePractitionerProvider.notifier).state = practitioner;
//       }
//       resourcesToUpdate.add(practitioner);
//     }
//     if (organization != null) {
//       if (organization.id == null) {
//         organization = organization.newIdIfNoId() as Organization;
//         ref.read(activeOrganizationProvider.notifier).state = organization;
//       }
//       resourcesToUpdate.add(organization);
//     }

//     if (ref.read(isDemoEnabledProvider)) {
//       print('demo mode, updatePatientInfoInCloud skipped');
//       return true;
//     }

//     for (var i = 0; i < numberOfTries; i++) {
//       final resources = await _pushToCloud(resourcesToUpdate);
//       if (resources.isNotEmpty &&
//           !(resources.length == 1 && resources.first is OperationOutcome)) {
//         /// Success, now reset the flag about needing to update patient info in the cloud
//         ref.read(shouldUpdatePatientInfoProvider.notifier).state = false;
//         return true;
//       } else {
//         await timeout(i);
//       }
//     }
//     showStyledSnackbar(
//       context,
//       message: 'Failed to Update Patient Info In Cloud',
//       snackbarType: SnackbarType.error,
//     );
//     return false;
//   }

//   Future<bool> requestTask(material.BuildContext context, String taskId) async {
//     if (ref.read(isDemoEnabledProvider)) {
//       print('demo mode, requestTask skipped');
//       return true;
//     }
//     for (var i = 0; i < numberOfTries; i++) {
//       final returnValue = await _simpleGet('Task/$taskId', 'Requesting Task');
//       if (returnValue is Task) {
//         ref.read(activeTaskProvider.notifier).state = returnValue;
//         return true;
//       } else {
//         await timeout(i);
//       }
//     }
//     showStyledSnackbar(
//       context,
//       message: 'Failed to Request Patient Resources',
//       snackbarType: SnackbarType.error,
//     );
//     return false;
//   }

//   Future<bool> requestPatientResources(
//       material.BuildContext context, Task task) async {
//     if (ref.read(isDemoEnabledProvider)) {
//       print('demo mode, requestPatientResources skipped');
//       return true;
//     }
//     for (var i = 0; i < numberOfTries; i++) {
//       final returnValue = await _requestPatientResources(task);
//       if (returnValue) {
//         return true;
//       } else {
//         await timeout(i);
//       }
//     }
//     showStyledSnackbar(
//       context,
//       message: 'Failed to Request Patient Resources',
//       snackbarType: SnackbarType.error,
//     );
//     return false;
//   }

//   Future<bool> requestConsent(
//       material.BuildContext context, TaskParams taskParams) async {
//     if (ref.read(isDemoEnabledProvider)) {
//       print('demo mode, requestConsent skipped');
//       return true;
//     }
//     for (var i = 0; i < numberOfTries; i++) {
//       final requestSuccess = await _requestConsent(taskParams);
//       if (requestSuccess) {
//         return true;
//       } else {
//         await timeout(i);
//       }
//     }
//     showStyledSnackbar(
//       context,
//       message: 'Failed to Request Consent',
//       snackbarType: SnackbarType.error,
//     );
//     return false;
//   }

//   Future<bool> updateConsentAndSaveToCloud(
//       material.BuildContext context, Consent newConsent) async {
//     if (ref.read(isDemoEnabledProvider)) {
//       print('demo mode, updateConsentAndSaveToCloud skipped');
//       return true;
//     }
//     for (var i = 0; i < numberOfTries; i++) {
//       final returnValue = await _updateConsentAndSaveToCloud(newConsent);
//       if (returnValue) {
//         return true;
//       } else {
//         await timeout(i);
//       }
//     }
//     showStyledSnackbar(
//       context,
//       message: 'Failed to Update Consent and Save to Cloud',
//       snackbarType: SnackbarType.error,
//     );
//     return false;
//   }

//   Future<bool> getTaskResources(material.BuildContext context) async {
//     if (ref.read(isDemoEnabledProvider)) {
//       print('demo mode, getTaskResources skipped');
//       return true;
//     }
//     for (var i = 0; i < numberOfTries; i++) {
//       final returnValue = await _getTaskResources();
//       if (returnValue) {
//         ref.read(obtainedTaskResourcesProvider.notifier).state = true;
//         return true;
//       } else {
//         await timeout(i);
//       }
//     }
//     showStyledSnackbar(
//       context,
//       message: 'Failed to Get Task Resources',
//       snackbarType: SnackbarType.error,
//     );
//     return false;
//   }

//   Future<bool> uploadMeasureReport(
//       material.BuildContext context, MeasureReport measureReport) async {
//     final task = ref.read(activeTaskProvider);
//     final reportIndex = task.output?.indexWhere(
//         (element) => element.valueUri.toString().contains('MeasureReport'));
//     if (reportIndex == null || reportIndex == -1) {
//       ref.read(activeTaskProvider.notifier).state =
//           ref.read(activeTaskProvider.notifier).state.copyWith(output: [
//         if (task.output != null && task.output!.isNotEmpty) ...task.output!,
//         _newMeasureOutput(measureReport)
//       ]);
//     }
//     if (ref.read(isDemoEnabledProvider)) {
//       print('demo mode, uploadMeasureReport skipped');
//       return true;
//     }
//     for (var i = 0; i < numberOfTries; i++) {
//       final returnValue = await _pushToCloud([
//         measureReport,
//         if (reportIndex == null || reportIndex == -1)
//           ref.read(activeTaskProvider),
//       ]);
//       if (returnValue.isNotEmpty &&
//           !(returnValue.length == 1 &&
//               returnValue.first is OperationOutcome &&
//               (returnValue.first as OperationOutcome)
//                       .issue
//                       .first
//                       .code
//                       .toString() !=
//                   'informational')) {
//         return true;
//       } else {
//         await timeout(i);
//       }
//     }
//     showStyledSnackbar(
//       context,
//       message: 'Failed to Upload MeasureReport',
//       snackbarType: SnackbarType.error,
//     );
//     return false;
//   }

//   Future<bool> submitTask(
//       material.BuildContext context, TaskParams taskParams) async {
//     /// on Submit multiple Things Happen
//     /// We get the Measure
//     final measure = ref.read(measureProvider(taskParams));

//     /// We generate the MeasureReport
//     final measureReport = createMeasureReportFromResponses(
//       measure: measure,
//       responses: generateAllResponses(),
//       fhirUrl: ref.read(loginProvider).client.fhirUri.toString(),
//       patient: ref.read(activePatientProvider),
//       report: ref.read(measureReportProvider(measure.path)),
//     );

//     ref.read(measureReportProvider(measure.path).notifier).state =
//         measureReport;

//     if (ref.read(isDemoEnabledProvider)) {
//       print(
//           'demo mode, submitTask skipped, but still setting Code to "completed"');
//       ref.read(activeTaskProvider.notifier).state =
//           ref.read(activeTaskProvider).copyWith(status: Code('completed'));
//       return true;
//     }

//     /// We Upload the Measure Report
//     await uploadMeasureReport(context, measureReport);

//     // TODO(Dokotela): Remove at some point - Sends alert to Sentry
//     sendToSentry(const FhirAsyncError(label: 'Going to Complete NAT'));

//     /// This updates all resources (can be adjusted, some are unnecessary)
//     // TODO(Dokotela): which resources do we want to upload one more time
//     Future<bool> _finalizeAll() async {
//       for (var i = 0; i < numberOfTries; i++) {
//         final returnValue = await _updateAndCompleteAllResources();
//         if (returnValue) {
//           return true;
//         } else {
//           await timeout(i);
//         }
//       }
//       showStyledSnackbar(
//         context,
//         message: 'Failed to Update And Finalize All Resources',
//         snackbarType: SnackbarType.error,
//       );
//       return false;
//     }

//     Future<bool> _finalizeTask() async {
//       for (var i = 0; i < numberOfTries; i++) {
//         final returnValue = await _markTaskAsComplete();
//         if (returnValue) {
//           return true;
//         } else {
//           await timeout(i);
//         }
//       }
//       showStyledSnackbar(
//         context,
//         message: 'Failed to Update And Finalize All Resources',
//         snackbarType: SnackbarType.error,
//       );
//       return false;
//     }

//     /// Uploads all resources except Task
//     final finalizedAll = await _finalizeAll();
//     if (finalizedAll) {
//       /// Finalizes Task (sets state = completed), and uploads
//       final finalizeTask = await _finalizeTask();
//       sendToSentry(
//           FhirAsyncError(label: 'Completed NAT Task: ${taskParams.taskPath}'));
//       return finalizeTask;
//     } else {
//       return false;
//     }
//   }

//   /// ***********************************************************************
//   /// Simple Get, Requests a Single Resource
//   /// ***********************************************************************

//   Future<Resource> _simpleGet(String uri, String sentryLabel) async {
//     final requestUri =
//         Uri.parse('${ref.read(loginProvider).baseUrlForRequests}/$uri');

//     final response = await ref.read(loginProvider).client.get(requestUri);

//     final resource = Resource.fromJson(jsonDecode(response.body));

//     if (resource is OperationOutcome) {
//       if (resource.issue.isNotEmpty &&
//           resource.issue.first.code != Code('informational')) {
//         addOperationOutcome(resource);
//         sendToSentry(FhirAsyncError(label: sentryLabel, resource: resource));
//       }
//     }
//     return resource;
//   }

//   /// ***********************************************************************
//   /// Parse Request Results
//   /// ***********************************************************************

//   List<Resource> _requestResults(List<Resource> resources) {
//     final newResources = <Resource>[];

//     /// Look in the passed resources for any Bundles. If they're found, parse
//     /// them to see what's inside. Otherwise, just add the Resource
//     // TODO(Dokotela): these should just be Bundles or OperationOutcome, so if they're
//     /// something else, should we be making some kind of alert/exception
//     for (var resource in resources) {
//       if (resource is Bundle) {
//         newResources.addAll(parseBundle(resource));
//       } else {
//         newResources.add(resource);
//       }
//     }

//     /// if nothing is found, this is an error
//     if (newResources.isEmpty) {
//       addOperationOutcome(operationOutcome(
//           'Returned no Resources (this is an error)',
//           diagnostics: StackTrace.current.toString()));

//       return [];
//     } else {
//       final nonOperationOutcomeResourcePaths = <String>[];
//       final returnResources = <Resource>[];

//       /// look through all resources returned
//       for (var resource in newResources) {
//         /// if it's an OperationOutcome that's NOT informational, it's an error
//         if (resource is OperationOutcome) {
//           addOperationOutcome(resource);
//           if (resource.issue.first.code != Code('informational')) {
//             /// this is a little tricky, because you can technically request
//             /// multiple resources, and get returned values for some and error
//             /// messages for others. Currently what we're saying is that if
//             /// there's only one resource returned AND it's an OperationOutcome
//             /// that's an error, and we treat it as such. Otherwise, we make
//             /// note of it but still allow all of the non-OperationOutcome
//             /// resources to be returned
//             if (newResources.length == 1) {
//               return [resource];
//             } else {
//               /// If there's a list of resources and only some of them are
//               /// OperationOutcomes, we send those to Sentry, but don't throw
//               /// an error

//               sendToSentry(FhirAsyncError(
//                   label: 'returned an OperationOutcome because of an error',
//                   resource: resource));
//             }
//           } else {
//             returnResources.add(resource);
//           }
//         } else {
//           nonOperationOutcomeResourcePaths.add(resource.path);
//           returnResources.add(resource);
//         }
//       }

//       return returnResources;
//     }
//   }

//   bool listWithSingleOperationOutcome(
//       Ref ref, List<Resource> resources, String label) {
//     for (var resource in resources) {
//       if (resource is OperationOutcome) {
//         if (resource.issue.first.code != Code('informational')) {
//           addOperationOutcome(resource);
//           if (resources.length == 1) {
//             sendToSentry(FhirAsyncError(label: label, resource: resource));
//             return false;
//           }
//         }
//       }
//     }
//     return true;
//   }

//   /// ***********************************************************************
//   /// Updating/Pushing Information to Cloud
//   /// ***********************************************************************

//   Future<List<Resource>> _pushToCloud(List<Resource> resources) async {
//     final resourcesMap = <Resource, Code>{};

//     /// Check each existing resource path against the initial fhirResourceMap
//     /// If that value already exists, then patch (or update) the task instead
//     /// of creating it
//     resources.forEach((resource) {
//       resourcesMap[resource] = Code('PUT');
//     });

//     final loginClient = ref.read(loginProvider);

//     final requestResponse = await putOrPatchResources(
//       loginClient.map(
//         smart: (_) => _.client,
//         google: (_) => _.client,
//         nicheAim: (_) => _.client,
//         demo: (_) => _.client,
//         empty: (_) => _.client,
//       ),
//       resourcesMap,
//       Uri.parse(loginClient.maybeMap(
//         nicheAim: (_) => '${_.baseUrlForRequests}/search/Bundle',
//         orElse: () => loginClient.baseUrlForRequests,
//       )),
//       loginClient.map(
//         smart: (_) => _.client.fhirUri.toString(),
//         google: (_) => _.client.fhirUri.toString(),
//         nicheAim: (_) => _.client.fhirUri.toString(),
//         demo: (_) => _.client.fhirUri.toString(),
//         empty: (_) => _.client.fhirUri.toString(),
//       ),
//     );

//     return _requestResults([requestResponse]);
//   }

//   TaskOutput _newMeasureOutput(MeasureReport measureReport) => TaskOutput(
//       type: CodeableConcept(coding: [
//         Coding(
//             system: FhirUri('http://hl7.org/fhir/uv/sdc/CodeSystem/temp'),
//             code: Code('measureReport'))
//       ]),
//       valueUri: FhirUri(measureReport.path));

//   Future<bool> _markTaskAsComplete() async {
//     ref.read(activeTaskProvider.notifier).state =
//         _updatePercentCompleteInTask().copyWith(status: Code('completed'));
//     final finalTaskUpload = await _pushToCloud([ref.read(activeTaskProvider)]);
//     return listWithSingleOperationOutcome(
//       ref,
//       finalTaskUpload,
//       'Error: Failed Uploading finalized & completed Task ${ref.read(activeTaskProvider).id}',
//     );
//   }

//   Future<bool> _updateConsentAndSaveToCloud(Consent newConsent) async {
//     /// List of resources to upload
//     final consentResources = <Resource>[newConsent];

//     /// TaskParams (need these for some of the providers)
//     final taskParams = ref.read(activeTaskParamsProvider);

//     /// Path for the consentQuestionnaire
//     final consentQuestionnairePath =
//         ref.read(consentQuestionnaireProvider(taskParams))?.path;

//     /// If there is a ConsentQuestionnaire
//     if (consentQuestionnairePath != null) {
//       /// Get the params for the ConsentQuestionnaire
//       final consentParams = taskParams.newQParams(consentQuestionnairePath);

//       /// Generate the QuestionnaireResponse (does not return anything)
//       var newResponse = ref
//           .read(questionnaireEventsProvider.notifier)
//           .generateQuestionnaireResponse(consentParams);

//       /// Assign an ID if necessary
//       newResponse = newResponse.newIdIfNoId() as QuestionnaireResponse;

//       /// Store that QuestionnaireResponse
//       ref.read(questionnaireResponseProvider(consentParams).notifier).state =
//           newResponse;

//       /// And add it to the resources to upload
//       consentResources.add(newResponse);

//       /// Upload the resources to the server
//       final responseList = await _pushToCloud(consentResources);

//       return listWithSingleOperationOutcome(
//         ref,
//         responseList,
//         'Error: Failed Uploading finalized & completed Task ${taskParams.taskPath}',
//       );
//     }
//     sendToSentry(const FhirAsyncError(
//         label: 'No Consent Questionnaire Path or ID was found'));
//     return false;
//   }

//   Future<bool> _updateAndCompleteAllResources() async {
//     /// check the Task, throw an error if there isn't one, and return that
//     /// we don't need to update it, if it's already complete
//     final task = ref.read(activeTaskProvider);
//     if (task.status == Code('completed')) {
//       return false;
//     }

//     final resourcesList = <Resource>[];
//     final taskParams = ref.read(activeTaskParamsProvider);

//     // TODO(FireJuun): here we could do one final upload of any or all resources we wanted
//     ///
//     ///
//     /// QUESTIONNAIRE RESPONSES
//     resourcesList.addAll(generateAllResponses()
//         .map((e) => e.copyWith(status: Code('completed'))));

//     /// CONSENT
//     final consent = ref.read(taskConsentProvider(taskParams));
//     if (consent != null) {
//       resourcesList.add(consent);
//     }

//     /// CONSENT QUESTIONNAIRE RESPONSE
//     final consentQuestionnaire =
//         ref.read(consentQuestionnaireProvider(taskParams));
//     if (consentQuestionnaire != null) {
//       final consentQuestionnaireResponse = ref
//           .read(questionnaireEventsProvider.notifier)
//           .generateQuestionnaireResponse(
//               taskParams.newQParams(consentQuestionnaire.path));
//       if (consentQuestionnaireResponse.id != null) {
//         resourcesList.add(consentQuestionnaireResponse);
//       }
//     }

//     /// PATIENT
//     resourcesList.add(ref.watch(activePatientProvider));

//     /// RELATEDPERSON
//     final relatedPerson = ref.watch(activeRelatedPersonProvider);
//     if (relatedPerson != null) {
//       resourcesList.add(relatedPerson);
//     }

//     /// PRACTITIONER
//     final practitioner = ref.watch(activePractitionerProvider);
//     if (practitioner != null) {
//       resourcesList.add(practitioner);
//     }

//     /// ORGANIZATION
//     final organization = ref.watch(activeOrganizationProvider);
//     if (organization != null) {
//       resourcesList.add(organization);
//     }

//     /// MEASUREREPORT
//     final measureReport = ref.read(
//         measureReportProvider(ref.read(measureProvider(taskParams)).path));
//     if (measureReport != null) {
//       resourcesList.add(measureReport);
//     }

//     final returnValue = await _pushToCloud(resourcesList);

//     if (returnValue.isNotEmpty &&
//         !(returnValue.length == 1 &&
//             returnValue.first is OperationOutcome &&
//             (returnValue.first as OperationOutcome)
//                     .issue
//                     .first
//                     .code
//                     .toString() !=
//                 'informational')) {
//       return true;
//     }

//     /// If something goes wrong updating all resources
//     else {
//       return false;
//     }
//   }

//   /// ***********************************************************************
//   /// This is to get the Resources associated with the Patient, Organization,
//   /// Practitioner, and RelatedPerson
//   /// ***********************************************************************

//   Future<bool> _requestPatientResources(Task task) async {
//     final patientResources = <Resource>[];
//     try {
//       final patientResourceBundle = await _simpleGet(
//         'Task?_id=${task.id}&_include=*',
//         'Requesting all resources included in Task',
//       );

//       if (patientResourceBundle is Bundle) {
//         for (var resource in patientResourceBundle.entry ?? <BundleEntry>[]) {
//           if (resource.resource != null) {
//             patientResources.add(resource.resource!);
//           }
//         }
//       } else if (patientResourceBundle is OperationOutcome) {
//         addOperationOutcome(patientResourceBundle);
//       }

//       /// Find the patient
//       final patientIndex =
//           patientResources.indexWhere((element) => element is Patient);

//       if (patientIndex != -1) {
//         final Patient patient = patientResources[patientIndex] as Patient;

//         ///
//         /// Find the practitioner associated with the Patient, if available
//         ///
//         await _getPractitioner(patient);

//         if (patientResources[patientIndex].id == null) {
//           throw Exception('The defined patient doesn\'t have an ID:');
//         }

//         final relatedPersonIndex =
//             patientResources.indexWhere((element) => element is RelatedPerson);
//         RelatedPerson? relatedPerson;
//         if (relatedPersonIndex != -1) {
//           ///
//           /// Get the related person if there isn't already one
//           ///
//           relatedPerson = await _getRelatedPerson(patient);
//         }

//         if (relatedPerson != null) {
//           ref.read(activeUserProvider.notifier).state =
//               FhirCuestionarioPerson.relatedPerson(
//                   patient: patient, relatedPerson: relatedPerson);
//         } else {
//           ref.read(activeUserProvider.notifier).state =
//               FhirCuestionarioPerson.patient(patient: patient);
//         }
//         return true;
//       } else {
//         addOperationOutcome(operationOutcomeError(
//             'Error: Failed To Get Patient on Request for Task ${task.id}',
//             StackTrace.current));
//         sendToSentry(FhirAsyncError(
//             label:
//                 'Error: Failed To Get Patient on Request for Task ${task.id}',
//             resource: operationOutcomeError(
//               'Error: Failed To Get Patient on Request for Task ${task.id}',
//               StackTrace.current,
//             )));
//         return false;
//       }
//     } catch (e, stack) {
//       addOperationOutcome(operationOutcomeError(e, stack));
//       sendToSentry(FhirAsyncError(
//           label:
//               'Error: Failed Requesting all resources included in Task ${task.id}',
//           resource: operationOutcomeError(e, stack)));
//       return false;
//     }
//   }

//   Future<RelatedPerson?> _getRelatedPerson(Patient patient) async {
//     final relatedPerson = await _simpleGet(
//       'RelatedPerson?patient=${patient.id}',
//       'Requesting related person',
//     );
//     if (relatedPerson is RelatedPerson) {
//       return relatedPerson;
//     } else if (relatedPerson is OperationOutcome) {
//       addOperationOutcome(relatedPerson);
//     } else if (relatedPerson is Bundle) {
//       for (var entry in relatedPerson.entry ?? <BundleEntry>[]) {
//         if (entry.resource != null && entry.resource is RelatedPerson) {
//           return entry.resource! as RelatedPerson;
//         }
//       }
//     }
//     return null;
//   }

//   Future<bool> _getPractitioner(Patient patient) async {
//     /// This will allow us to search for the GeneralPractitioner (PCP) who
//     /// is associated with the Patient
//     final practitionerIndex = patient.generalPractitioner?.indexWhere(
//         (element) => element.reference?.contains('Practitioner/') ?? false);
//     if (practitionerIndex != null && practitionerIndex != -1) {
//       final practitionerUri =
//           patient.generalPractitioner?[practitionerIndex].reference;
//       if (practitionerUri != null) {
//         final practitioner =
//             await _simpleGet(practitionerUri, 'Requesting practitioner');
//         if (practitioner is Practitioner) {
//           ref.read(activePractitionerProvider.notifier).state = practitioner;
//           return true;
//         } else if (practitioner is OperationOutcome) {
//           ref.read(operationOutcomeProvider).add(practitioner);
//           return false;
//         } else if (practitioner is Bundle) {
//           for (var entry in practitioner.entry ?? <BundleEntry>[]) {
//             if (entry.resource != null && entry.resource is Practitioner) {
//               ref.read(activePractitionerProvider.notifier).state =
//                   entry.resource! as Practitioner;
//               return true;
//             }
//           }
//         }
//       }
//     }
//     return false;
//   }

//   /// ***********************************************************************
//   /// Requests for Consent and related Questionnaires
//   /// ***********************************************************************

//   Future<bool> _getConsent(
//     TaskParams taskParams,
//     String patientId,
//   ) async {
//     final consent = await _simpleGet(
//       'Consent?patient=$patientId',
//       'Requesting consent',
//     );
//     if (consent is Consent) {
//       ref.read(taskConsentProvider(taskParams).notifier).setValue(consent);
//       return true;
//     } else if (consent is OperationOutcome) {
//       ref.read(operationOutcomeProvider).add(consent);
//       return false;
//     } else if (consent is Bundle) {
//       for (var entry in consent.entry ?? <BundleEntry>[]) {
//         if (entry.resource != null && entry.resource is Consent) {
//           ref
//               .read(taskConsentProvider(taskParams).notifier)
//               .setValue(entry.resource as Consent);
//         }
//       }
//       return true;
//     }
//     return false;
//   }

//   Future<bool> _getConsentQuestionnaire(Date? birthDate) async {
//     if (clientAssets.clientFeatures.getConsentQuestionnairePath == null) {
//       return false;
//     } else {
//       final consentQuestionnaire = await _simpleGet(
//         '${clientAssets.clientFeatures.getConsentQuestionnairePath!(birthDate?.value)}',
//         'Requesting consent questionnaire',
//       );
//       if (consentQuestionnaire is Bundle) {
//         for (var entry in consentQuestionnaire.entry ?? <BundleEntry>[]) {
//           if (entry.resource != null && entry.resource is Questionnaire) {
//             final qParams = QParams(
//               taskPath: ref.read(activeTaskPathProvider),
//               qPath: entry.resource?.path ?? '',
//             );
//             ref.read(questionnaireProvider(qParams).notifier).state =
//                 entry.resource as Questionnaire;
//             ref
//                 .read(
//                     consentQuestionnaireProvider(qParams.taskParams!).notifier)
//                 .setValue(entry.resource as Questionnaire);

//             ref
//                 .read(itemEventsProvider.notifier)
//                 .itemProvidersFromQuestionnaire(qParams);
//             return true;
//           }
//         }
//       } else if (consentQuestionnaire is Questionnaire) {
//         final qParams = QParams(
//           taskPath: ref.read(activeTaskPathProvider),
//           qPath: consentQuestionnaire.path,
//         );
//         ref.read(questionnaireProvider(qParams).notifier).state =
//             consentQuestionnaire;
//         ref
//             .read(itemEventsProvider.notifier)
//             .itemProvidersFromQuestionnaire(qParams);
//         ref
//             .read(consentQuestionnaireProvider(qParams.taskParams!).notifier)
//             .setValue(consentQuestionnaire);

//         return true;
//       } else if (consentQuestionnaire is OperationOutcome) {
//         addOperationOutcome(consentQuestionnaire);
//         return false;
//       } else {
//         addOperationOutcome(OperationOutcome(
//           contained: [consentQuestionnaire],
//           issue: [
//             OperationOutcomeIssue(
//               code: Code('structure'),
//               diagnostics:
//                   'The request for a ConsentQuestionnaire failed to return a'
//                   ' Bundle, Questionnaire or OperationOutcome, but is '
//                   ' contained in this newly created OperationOutcome for '
//                   ' troubleshooting purposes',
//             ),
//           ],
//         ));
//       }
//       return false;
//     }
//   }

//   Future<bool> _requestConsent(TaskParams taskParams) async {
//     final patient = ref.read(activeUserProvider).patient;

//     /// Get the most recent consent
//     if (patient.id != null) {
//       final gotConsent = await _getConsent(taskParams, patient.id!);

//       /// Get the consent Questionnaire
//       final gotConsentQuestionnaire =
//           await _getConsentQuestionnaire(patient.birthDate);

//       if (gotConsent || gotConsentQuestionnaire) {
//         return true;
//       }
//     }

//     return false;
//   }

//   /// ***********************************************************************
//   /// Request for Resources in the Task
//   /// ***********************************************************************

//   Future<bool> _getTaskResources() async {
//     final task = ref.read(activeTaskProvider);
//     final taskParams = TaskParams(taskPath: task.path);
//     final loginClient = ref.read(loginProvider);
//     final newTaskResources = await taskResources(
//       patient: ref.read(activePatientProvider),
//       client: loginClient.client,
//       task: task,
//       base: Uri.parse(
//         loginClient.map(
//           smart: (_) => _.client.fhirUri.toString(),
//           google: (_) => _.client.fhirUri.toString(),
//           nicheAim: (_) => '${_.baseUrlForRequests}/search/Bundle',
//           demo: (_) => _.client.fhirUri.toString(),
//           empty: (_) => _.client.fhirUri.toString(),
//         ),
//       ),
//       canonicalBaseUrl: loginClient.client.fhirUri.toString(),
//     );

//     /// ValueSets specified in a Questionnaire
//     final Set<String> questionnaireValueSets = <String>{};

//     /// ValueSets that were included as part of the Task
//     final Set<String> localValueSets = <String>{};
//     for (var newResource in newTaskResources) {
//       if (newResource is Questionnaire) {
//         final qParams = taskParams.newQParams(newResource.path);
//         ref.read(questionnaireProvider(qParams).notifier).state = newResource;
//         ref
//             .read(itemEventsProvider.notifier)
//             .itemProvidersFromQuestionnaire(qParams);
//         ref.read(questionnaireListProvider(taskParams).notifier).state = [
//           ...ref.read(questionnaireListProvider(taskParams).notifier).state,
//           qParams,
//         ];
//         questionnaireValueSets
//             .addAll(valueSetPathsFromQuestionnaire(newResource));
//       } else if (newResource is ValueSet) {
//         ref.read(valueSetProvider(newResource.path).notifier).state =
//             newResource;
//         localValueSets.add(newResource.path);
//       } else if (newResource is Measure) {
//         ref
//             .read(measureProvider(ref.read(activeTaskParamsProvider)).notifier)
//             .state = newResource;
//       } else if (newResource is QuestionnaireResponse) {
//         final qPath =
//             pathFromBundleResponse(newResource.questionnaire.toString());
//         final qParams = QParams(taskPath: task.path, qPath: qPath);
//         ref.read(questionnaireResponseProvider(qParams).notifier).state =
//             newResource;
//         ref
//             .read(itemEventsProvider.notifier)
//             .answersFromResponse(qParams, newResource.item);
//       } else if (newResource is PlanDefinition) {
//         /// This only applies for a [Task] with one [PlanDefinition]
//         ref.read(activePlanDefinitionProvider(taskParams).notifier).state =
//             newResource;
//       } else if (newResource is Task) {
//         ref.read(activeTaskProvider.notifier).state = newResource;
//       } else if (newResource is OperationOutcome) {
//         ref.read(operationOutcomeProvider).add(newResource);
//       } else {
//         print('${newResource.path} is not a typical Task input');
//       }
//     }

//     /// Remove all ValueSets that we already have
//     questionnaireValueSets
//         .removeWhere((element) => localValueSets.contains(element));

//     /// If it's not empty
//     if (questionnaireValueSets.isNotEmpty) {
//       final bundleEntries = <BundleEntry>[];
//       for (final valueSet in questionnaireValueSets) {
//         if (valueSet.split('/').length == 2 &&
//             valueSet.split('/').first == 'ValueSet') {
//           final entry = bundleEntryRequest(
//             method: Code('GET'),
//             resourcePath: valueSet,
//           );
//           if (entry != null) {
//             bundleEntries.add(entry);
//           }
//         } else {
//           // TODO(Dokotela): when it's an outside ValueSet
//         }
//       }
//       if (bundleEntries.isNotEmpty) {
//         final valueSetBundle =
//             newTransactionBundle().copyWith(entry: bundleEntries);
//         final valueSetResponse = await fhirRequestTransaction(
//           base: Uri.parse(
//             loginClient.map(
//               smart: (_) => _.client.fhirUri.toString(),
//               google: (_) => _.client.fhirUri.toString(),
//               nicheAim: (_) => '${_.baseUrlForRequests}/search/Bundle',
//               demo: (_) => _.client.fhirUri.toString(),
//               empty: (_) => _.client.fhirUri.toString(),
//             ),
//           ),
//           bundle: valueSetBundle,
//           client: loginClient.client,
//         );

//         // TODO(Dokotela): need to think about how to parse this properly
//         final valueSetResources = parseRequestResult(valueSetResponse);
//         for (final resource in valueSetResources) {
//           if (resource is OperationOutcome) {
//             ref.read(operationOutcomeProvider).add(resource);
//           } else if (resource is ValueSet) {
//             ref.read(valueSetProvider(resource.path).notifier).state = resource;
//           } else {
//             // TODO(Dokotela): what to do if it's not one of the two above options
//           }
//         }
//       }
//     }
//     return true;
//   }
// }
