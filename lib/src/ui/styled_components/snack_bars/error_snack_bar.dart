import 'package:flutter/material.dart';

import '../../../src.dart';

class ErrorSnackBar extends StatelessWidget {
  const ErrorSnackBar(this.fhirliteError, {super.key});

  final FhirliteError fhirliteError;

  @override
  Widget build(BuildContext context) {
    fhirliteError.map(
      failureMessage: (failureMessage) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(failureMessage.message),
          ),
        );
      },
      exception: (exception) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('The following exception has occurred:\n'
                'Exception: ${exception.exception}\n'
                'StackTrace: ${exception.stackTrace}'),
          ),
        );
      },
      atSign: (atSign) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('The following exception has occurred:\n'
                'Exception: ${atSign.exception.message}\n'
                'StackTrace: ${atSign.stackTrace}'),
          ),
        );
      },
    );
    throw UnimplementedError('An unknown error has occurred.');
  }
}
