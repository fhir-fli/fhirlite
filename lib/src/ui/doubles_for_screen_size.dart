// Flutter imports:
import 'package:flutter/material.dart';

/// Breakpoints based on:
/// https://www.browserstack.com/guide/ideal-screen-sizes-for-responsive-design#:~:text=According%20to%20the%20Worldwide%20Screen,360%C3%97640%20(7.28%25)
/// https://worship.agency/mobile-screen-sizes-for-2021
/// https://gs.statcounter.com/screen-resolution-stats/mobile/worldwide
const mobileBreakPoint = 480;
const mobileBreakPointHeight = 854;
const mobileBreakPointWidth = 480;
const mobileCoefficient = 0.4;

const tabletBreakPoint = 800;
const tabletBreakPointHeight = 800;
const tabletBreakPointWidth = 1400;
const tabletCoefficient = 0.6;

const laptopBreakPoint = 1080;
const laptopBreakPointHeight = 1080;
const laptopBreakPointWidth = 1920;
const laptopCoefficient = 0.8;

double activeHeight(BuildContext context) => MediaQuery.of(context).size.height;

double activeWidth(BuildContext context) => MediaQuery.of(context).size.width;

double textBoxBySize(BuildContext context) {
  final _width = activeWidth(context);
  if (_width < mobileBreakPointWidth) {
    return _width * 0.8;
  } else if (_width < tabletBreakPointWidth) {
    return _width * 0.4;
  } else if (_width < laptopBreakPointWidth) {
    return _width * 0.3;
  } else {
    return _width * 0.3;
  }
}

double doubleBySize(BuildContext context, num number) {
  final _height = activeHeight(context);
  final _width = activeWidth(context);
  if (_width < mobileBreakPointWidth || _height < mobileBreakPointHeight) {
    return number.toDouble() * mobileCoefficient;
  } else if (_width < tabletBreakPointWidth ||
      _height < tabletBreakPointHeight) {
    return number.toDouble() * tabletCoefficient;
  } else if (_width < laptopBreakPointWidth ||
      _height < laptopBreakPointHeight) {
    return number.toDouble() * laptopCoefficient;
  } else {
    return number.toDouble();
  }
}

double doubleByHeight(BuildContext context, num number) {
  final _height = activeHeight(context);
  if (_height < mobileBreakPointHeight) {
    return number.toDouble() * mobileCoefficient;
  } else if (_height < tabletBreakPointHeight) {
    return number.toDouble() * tabletCoefficient;
  } else if (_height < laptopBreakPointHeight) {
    return number.toDouble() * laptopCoefficient;
  } else {
    return number.toDouble();
  }
}

double doubleByWidth(BuildContext context, num number) {
  final _width = activeWidth(context);
  if (_width < mobileBreakPointWidth) {
    return number.toDouble() * mobileCoefficient;
  } else if (_width < tabletBreakPointWidth) {
    return number.toDouble() * tabletCoefficient;
  } else if (_width < laptopBreakPointWidth) {
    return number.toDouble() * laptopCoefficient;
  } else {
    return number.toDouble();
  }
}

double doubleByPercentHeight(BuildContext context, num percentOfHeight) {
  final _height = activeHeight(context);
  if (_height < mobileBreakPointHeight) {
    return _height * percentOfHeight.toDouble() * mobileCoefficient;
  } else if (_height < tabletBreakPointHeight) {
    return _height * percentOfHeight.toDouble() * tabletCoefficient;
  } else if (_height < laptopBreakPointHeight) {
    return percentOfHeight.toDouble() * laptopCoefficient;
  } else {
    return _height * percentOfHeight.toDouble();
  }
}

double doubleByPercentWidth(BuildContext context, num percentOfWidth) {
  final _width = activeWidth(context);
  if (_width < mobileBreakPointWidth) {
    return _width * percentOfWidth.toDouble() * mobileCoefficient;
  } else if (_width < tabletBreakPointWidth) {
    return _width * percentOfWidth.toDouble() * tabletCoefficient;
  } else if (_width < laptopBreakPointWidth) {
    return percentOfWidth.toDouble() * laptopCoefficient;
  } else {
    return _width * percentOfWidth.toDouble();
  }
}
