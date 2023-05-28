import 'dart:convert';

import 'package:at_fhir/services/listen_atsign.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../src.dart';

class FhirListView extends HookConsumerWidget {
  const FhirListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resources = ref.watch(fhirResourcesProvider);
    ref.watch(atSignResourceTypeStreamProvider('patient')).onData(
          (data) => ref.read(fhirResourcesProvider.notifier).addResource(data),
        );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  border: TableBorder.all(width: 1),
                  columns: const [
                    DataColumn(label: Text('ResourceType')),
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('JSON')),
                  ],
                  rows: resources
                      .map(
                        (item) => DataRow(
                          cells: [
                            DataCell(Text(item.resourceTypeString ?? '')),
                            DataCell(Text(item.fhirId ?? '')),
                            DataCell(Text(jsonEncode(item.toJson()))),
                          ],
                          onLongPress: () {
                            ref
                                .watch(fhirStringProvider.notifier)
                                .newString(item.fhirId ?? '');
                            const FhirPrettyRoute().go(context);
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const FhirRoute().go(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
