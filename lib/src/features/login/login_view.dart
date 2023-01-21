import 'dart:developer';

import 'package:fhir/r4.dart';
import 'package:fhir_auth/r4.dart';
import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// The design for this login page was based mostly on this github repo:
/// https://github.com/MarcusNg/flutter_login_ui
/// Can also be seen on YouTube: https://www.youtube.com/watch?v=6kaEbTfb444
/// It's older, but most of it is still functional with a little tweaking
class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final labels = LocaleUtil().getLabels(context);

    Widget buildForgotPasswordButton() => Container(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () => log('Forgot Password Button Pressed'),
            child: Text(
              labels.forgotPassword,
              style: kLabelStyle,
            ),
          ),
        );

    Widget buildRememberMeCheckbox() => SizedBox(
          height: 20.0,
          child: Row(
            children: <Widget>[
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                  value: ref.watch(rememberMeProvider),
                  checkColor: Colors.green,
                  activeColor: Colors.white,
                  onChanged: (value) {
                    if (value != null) {
                      ref.read(rememberMeProvider.notifier).state = value;
                    }
                  },
                ),
              ),
              Text(
                labels.rememberMe,
                style: kLabelStyle,
              ),
            ],
          ),
        );

    Widget buildLoginBtn() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double?>(5.0),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
              const EdgeInsets.all(15.0),
            ),
            shape: MaterialStateProperty.all<OutlinedBorder?>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: () {
            ref
                .read(clientProvider.notifier)
                .update(FhirClient(fhirUri: FhirUri('mayjuun.com/fhir')));

            const PatientIndexRoute().go(context);
          },
          child: Text(
            labels.loginCapital,
            style: const TextStyle(
              color: Color(0xFF527DAA),
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      );
    }

    Widget buildSignInWithText() => Column(
          children: <Widget>[
            Text(
              labels.orForLogin,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              labels.signInWith,
              style: kLabelStyle,
            ),
          ],
        );

    Widget buildSocialBtn(Function onTap, AssetImage logo, String text) =>
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                  image: DecorationImage(
                    image: logo,
                  ),
                ),
              ),
              const Gap(6),
              Text(text, style: const TextStyle(color: Colors.white)),
            ],
          ),
        );

    Widget buildSocialBtnRow() => Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildSocialBtn(
                () => log('Login with Microsoft'),
                const AssetImage(
                  'assets/icons/microsoft.png',
                ),
                'Microsoft',
              ),
              buildSocialBtn(
                () => log('Login with Google'),
                const AssetImage(
                  'assets/icons/google.jpg',
                ),
                'Google',
              ),
            ],
          ),
        );

    Widget buildSignupBtn() {
      return GestureDetector(
        onTap: () => log('Sign Up Button Pressed'),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: labels.dontHaveAccount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const TextSpan(text: '  '),
              TextSpan(
                text: labels.signUp,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFB46EBF),
                        Color(0xFF6637CB),
                        Color(0xFF25939A),
                        Color(0xFF25939A),
                        Color(0xFF6637CB),
                        Color(0xFFB46EBF),
                      ],
                      stops: [
                        0.006,
                        0.018,
                        0.25,
                        0.9,
                        0.982,
                        0.994,
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: double.infinity,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 40.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          ref.watch(clientAssetsProvider)?.clientNames?.title ??
                              labels.signIn,
                          style: ref
                              .watch(clientAssetsProvider)
                              ?.textTheme
                              ?.headlineLarge
                              ?.apply(
                                color: Colors.white,
                              ),
                        ),
                        const Gap(30),
                        buildTextField(
                          labels.email,
                          labels.enterYourEmail,
                          false,
                          Icons.email,
                          TextInputType.emailAddress,
                        ),
                        const Gap(10),
                        buildTextField(
                          labels.password,
                          labels.enterYourEmail,
                          true,
                          Icons.lock,
                        ),
                        buildForgotPasswordButton(),
                        buildRememberMeCheckbox(),
                        buildLoginBtn(),
                        buildSignInWithText(),
                        buildSocialBtnRow(),
                        buildSignupBtn()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
