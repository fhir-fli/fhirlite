import 'package:fhir/r4.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../src.dart';

class PatientIndexView extends ConsumerWidget {
  const PatientIndexView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final labels = LocaleUtil().getLabels(context);
    final patients = ref.watch(allPatientsProvider).values.toList();
    if (patients.isEmpty) {
      ref.read(allPatientsProvider.notifier).loadDemoPatients();
    }

    Widget patientCard(Patient patient, void Function()? onPressed) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(5),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))))),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${labels.names}: ',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      fullNameFromHumanNameList(names: patient.name),
                      style: const TextStyle(color: Colors.black),
                    ),
                    const Gap(4),
                    Row(
                      children: [
                        Text(
                          '${labels.birthDateAbbreviation}: ',
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          patient.birthDate.toString(),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    const Gap(4),
                    Row(
                      children: [
                        Text(
                          '${labels.sexAtBirth}: ',
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          patient.gender.toString(),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    const Gap(4),
                    Text(
                      '${labels.contactName}: ',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      fullNameFromSingleHumanName(patient.contact?.first.name),
                      style: const TextStyle(color: Colors.black),
                    ),
                  ]),
            )));

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF6637CB),
            title: TextFormField(
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: Text(
                  labels.searchPatient,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                prefix: const Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 16.0, 0.0),
                  child: Icon(Icons.search),
                ),
              ),
              initialValue: '',
              onChanged: (String newValue) {},
            ),
          ),
          backgroundColor: const Color(0xFF6637CB),
          // drawer: NavigationDrawer(labels),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFB46EBF),
                  Color(0xFF6637CB),
                  Color(0xFF6637CB),
                  Color(0xFFB46EBF),
                ],
                stops: [
                  0.006,
                  0.25,
                  0.9,
                  0.994,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) =>
                      patientCard(patients[index], () {
                    ref.read(activePatientProvider.notifier).state =
                        patients[index];
                    const PatientRoute().go(context);
                  }),
                  itemCount: patients.length,
                ),
              ),
            ),
          ),
          // floatingActionButton: FloatingActionButton.extended(
          //   onPressed: () => PatientRoute().go(context),
          //   label: Text(labels.newPatient),
          //   icon: const Icon(Icons.add),
          // ),
        ),
      ),
    );
  }
}
