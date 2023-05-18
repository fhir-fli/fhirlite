import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_table_view/scrollable_table_view.dart';

import '../../src.dart';

class FhirListView extends HookConsumerWidget {
  const FhirListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resources = ref.watch(fhirResourcesProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
              child: ScrollableTableView(
            columns: const [
              TableViewColumn(
                height: 40,
                width: 100,
                label: 'ResourceType',
              ),
              TableViewColumn(
                height: 40,
                width: 100,
                label: 'ID',
              ),
              TableViewColumn(
                height: 40,
                width: 600,
                label: 'Json',
              ),
            ],
            rows: resources
                .map((e) =>
                    [e.resourceTypeString, e.fhirId, jsonEncode(e.toJson())])
                .toList()
                .map((record) {
              return TableViewRow(
                height: 100,
                onTap: () {
                  ref
                      .watch(fhirStringProvider.notifier)
                      .newString(record[2] ?? '');
                  const FhirPrettyRoute().go(context);
                },
                cells: record.map((value) {
                  return TableViewCell(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(value ?? ''),
                  ));
                }).toList(),
              );
            }).toList(),
          )),
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
