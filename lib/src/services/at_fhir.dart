import 'package:at_client/at_client.dart';

import '../../fhirlite.dart';

void atFhirListen(
    AtClient atClient, Function(AtClient, AtNotification) listenFunction) {
  atClient.notificationService
      .subscribe(shouldDecrypt: true)
      .listen((AtNotification atNotification) async {
    listenFunction(atClient, atNotification);
  });
}

Future<NotificationResult> atFhirNotify(
  AtClient atClient,
  AtFhirNotification atFhirNotification,
  String atSign,
) {
  /// make some metadata
  var metaData = Metadata()
    ..isPublic = false
    ..isEncrypted = true;

  /// Create the atKey (even though we're not storing it?)
  var atKey = AtKey()
    ..key = 'notification'
    ..sharedWith = atSign
    ..metadata = metaData;

  final result =
      atClient.notificationService.notify(NotificationParams.forUpdate(
    atKey,
    value: atFhirNotification.toJsonString(),
  ));

  return result;
}
