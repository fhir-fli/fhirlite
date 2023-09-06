import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';

import '../../src.dart';

final LocalAuthentication auth = LocalAuthentication();

Future<bool> canUseBiometrics() async => auth.canCheckBiometrics;

Future<bool> isDeviceSupported() async => auth.isDeviceSupported();

Future<bool> biometricsAvailable() async =>
    await canUseBiometrics() || await auth.isDeviceSupported();

Future<List<BiometricType>> biometricTypes() async =>
    auth.getAvailableBiometrics();

Future<SuccessOrError> biometricAuth(AppLocalizations labels) async {
  final biometricInstructions = labels.biometricInstructions == ''
      ? 'Authenticate using your fingerprint'
      : labels.biometricInstructions;
  final unsuccessfulBiometrics = labels.unsuccessfulBiometrics == ''
      ? 'Unsuccessful'
      : labels.unsuccessfulBiometrics;
  final biometricsUnavailable = labels.biometricsUnavailable == ''
      ? 'Biometrics not available, please choose another option'
      : labels.biometricsUnavailable;
  final biometricsNotEnrolled = labels.biometricsNotEnrolled == ''
      ? 'Biometrics not enrolled. Please choose another option, '
          'or enroll Biometrics and then try again.'
      : labels.biometricsNotEnrolled;
  final biometricPlatformException = labels.biometricPlatformException == ''
      ? 'Error trying to login'
      : labels.biometricPlatformException;
  // final biometricOtherException = labels.biometricOtherException == ''
  //     ? 'Unknown error'
  //     : labels.biometricOtherException;
  try {
    if (await biometricsAvailable()) {
      final bool success = await auth.authenticate(
        localizedReason: biometricInstructions,
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );
      return success
          ? const FhirliteSuccess.success()
          : FhirliteError.failureMessage(unsuccessfulBiometrics);
    } else {
      return FhirliteError.failureMessage(biometricsUnavailable);
    }
  } on PlatformException catch (e) {
    return e.code == auth_error.notAvailable
        ? FhirliteError.failureMessage(biometricsUnavailable)
        : e.code == auth_error.notEnrolled
            ? FhirliteError.failureMessage(biometricsNotEnrolled)
            : FhirliteError.failureMessage('$biometricPlatformException: $e');
  } catch (exception, stackTrace) {
    return FhirliteError.exception(exception, stackTrace);
  }
}
