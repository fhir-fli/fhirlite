import 'package:flutter/material.dart';

class FHIRLite extends StatelessWidget {
  const FHIRLite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FHIR Lite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FHIR Lite'),
        ),
        body: const Center(
          child: Text('FHIR Lite'),
        ),
      ),
    );
  }
}
