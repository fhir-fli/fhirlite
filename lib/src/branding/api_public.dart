// ignore_for_file: non_constant_identifier_names
// spec: https://itnext.io/flutter-1-17-no-more-flavors-no-more-ios-schemas-command-argument-that-solves-everything-8b145ed4285d

// Project imports:
import 'package:get_it/get_it.dart';

import 'client_assets.dart';

final _getIt = GetIt.instance;
final clientAssets = _getIt<ClientAssets>();

final _clientApis = clientAssets.clientApis;

class EnvConfig {
  final String APP_NAME = String.fromEnvironment('APP_NAME',
      defaultValue: _clientApis.clientAppTitle);
  static const APP_SUFFIX = String.fromEnvironment('APP_SUFFIX');
}

bool isProd = _getApiMode() == ApiMode.prod;

enum ApiMode { dev, stage, prod }

final ApiMode apiMode = _getApiMode();

ApiMode _getApiMode() {
  ApiMode response;
  switch (EnvConfig.APP_SUFFIX) {
    case '.dev':
      response = ApiMode.dev;
      break;
    case '.stage':
      response = ApiMode.stage;
      break;
    case '.prod':
    default:
      response = ApiMode.prod;
  }
  return response;
}

final clientName = _clientApis.clientAppName;

// final sentryDsn = _getSentryDsn(apiMode);

// String _getSentryDsn(ApiMode mode) {
//   switch (mode) {
//     case ApiMode.dev:
//       return _clientApis.sentryDsnDev;
//     case ApiMode.stage:
//       return _clientApis.sentryDsnStage;
//     case ApiMode.prod:
//       return _clientApis.sentryDsnProd;
//   }
// }


