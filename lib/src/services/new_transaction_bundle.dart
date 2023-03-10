// Package imports:
import 'package:fhir/r4.dart';

Bundle newTransactionBundle() => Bundle(
      type: Code('transaction'),
      entry: <BundleEntry>[],
    );
