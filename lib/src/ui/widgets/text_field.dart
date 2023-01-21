import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../src.dart';

Widget buildTextField(
  String text,
  String hintText,
  bool obscureText,
  IconData icons, [
  TextInputType? textInputType,
]) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: kLabelStyle,
        ),
        const Gap(10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            cursorColor: Colors.white,
            obscureText: false,
            keyboardType: textInputType,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                icons,
                color: Colors.white,
              ),
              hintText: hintText,
              hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
