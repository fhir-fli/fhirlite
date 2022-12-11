import 'package:animated_login/animated_login.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginView extends StatefulWidget {
  const LoginView(this.configs, {super.key});
  final Map<String, dynamic> configs;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: AnimatedLogin(
              onLogin: null, //LoginFunctions(context).onLogin,
              onSignup: null, //LoginFunctions(context).onSignup,
              onForgotPassword:
                  null, // LoginFunctions(context).onForgotPassword,
              logo: Image.asset(widget.configs['icon']),
              // backgroundImage: 'images/background_image.jpg',
              signUpMode: SignUpModes.both,
              socialLogins: null, //_socialLogins(context),
              loginDesktopTheme: null, // _desktopTheme,
              loginMobileTheme: null, // _mobileTheme,
              loginTexts: LoginTexts(
                welcome: '',
                welcomeBack: '',
                login: '',
              ), // _loginTexts,
              // changeLanguageCallback: (LanguageOption? _language) {
              //   if (_language != null) {
              //     DialogBuilder(context).showResultDialog(
              //         'Successfully changed the language to: ${_language.value}.');
              //     if (mounted) setState(() => language = _language);
              //   }
              // },
              // languageOptions: null, //_languageOptions,
              selectedLanguage: null, //language,
              initialMode: null, // currentMode,
              // onAuthModeChange: (AuthMode newMode) => currentMode = newMode,
            ),
          ),
        ),
      ),
    );
  }
}
