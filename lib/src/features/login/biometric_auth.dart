import 'package:fhirlite/src/src.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';

class BiometricAuth {
  BiometricAuth({
    this.biometricInstructions = 'Authenticate using your fingerprint',
    this.unsuccessfulBiometrics = 'Unsuccessful',
    this.biometricsUnavailable =
        'Biometrics not available, please choose another option',
    this.biometricsNotEnrolled =
        'Biometrics not enrolled. Please choose another option, '
            'or enroll Biometrics and then try again.',
    this.biometricPlatformException = 'Error trying to login',
    this.biometricOtherException = 'Unknown error',
  });

  final String biometricInstructions;
  final String unsuccessfulBiometrics;
  final String biometricsUnavailable;
  final String biometricsNotEnrolled;
  final String biometricPlatformException;
  final String biometricOtherException;

  final LocalAuthentication auth = LocalAuthentication();

  Future<bool> get canUseBiometrics async => auth.canCheckBiometrics;

  Future<bool> get isDeviceSupported async => auth.isDeviceSupported();

  Future<bool> get biometricsAvailable async =>
      await canUseBiometrics || await auth.isDeviceSupported();

  Future<List<BiometricType>> get biometricTypes async =>
      auth.getAvailableBiometrics();

  Future<SuccessOrErrorMessage> login() async {
    try {
      if (await biometricsAvailable) {
        final bool success = await auth.authenticate(
          localizedReason: biometricInstructions,
          options: const AuthenticationOptions(
            stickyAuth: true,
          ),
        );
        if (success) {
          return const SuccessOrErrorMessage.success();
        } else {
          return SuccessOrErrorMessage.failure(unsuccessfulBiometrics);
        }
      } else {
        return SuccessOrErrorMessage.failure(biometricsUnavailable);
      }
    } on PlatformException catch (e) {
      if (e.code == auth_error.notAvailable) {
        return SuccessOrErrorMessage.failure(biometricsUnavailable);
      } else if (e.code == auth_error.notEnrolled) {
        return SuccessOrErrorMessage.failure(biometricsNotEnrolled);
      } else {
        return SuccessOrErrorMessage.failure('$biometricPlatformException: $e');
      }
    } catch (e) {
      return SuccessOrErrorMessage.failure('$biometricOtherException: $e');
    }
  }
}
