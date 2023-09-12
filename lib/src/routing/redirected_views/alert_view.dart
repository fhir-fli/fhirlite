import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {
  const AlertView(this.message, {super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    size = size > MediaQuery.of(context).size.height
        ? MediaQuery.of(context).size.height
        : size;
    size = size > 350 ? 350 : size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 36),
                ),
              ),
              // Image(
              //   width: size,
              //   height: size,
              //   image: const AssetImage(AppAssets.PNG_LOGO_LIGHT),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
