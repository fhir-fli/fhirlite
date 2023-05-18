import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  @override
  bool build() => false;

  void setValue(bool newValue) => state = newValue;

  void loggedIn() => state = true;

  void loggedOut() => state = false;
}
