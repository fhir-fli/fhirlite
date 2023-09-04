// Flutter imports:
import 'package:flutter/material.dart';

/// Breakpoints based on:
/// https://www.browserstack.com/guide/ideal-screen-sizes-for-responsive-design#:~:text=According%20to%20the%20Worldwide%20Screen,360%C3%97640%20(7.28%25)
/// https://worship.agency/mobile-screen-sizes-for-2021
/// https://gs.statcounter.com/screen-resolution-stats/mobile/worldwide
const mobileBreakPoint = 480;
const mobileBreakPointHeight = 480;
const mobileBreakPointWidth = 320;
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
  final width = activeWidth(context);
  if (width < mobileBreakPointWidth) {
    return width * 0.8;
  } else if (width < tabletBreakPointWidth) {
    return width * 0.4;
  } else if (width < laptopBreakPointWidth) {
    return width * 0.3;
  } else {
    return width * 0.3;
  }
}

double doubleBySize(BuildContext context, num number) {
  final height = activeHeight(context);
  final width = activeWidth(context);
  if (width < mobileBreakPointWidth || height < mobileBreakPointHeight) {
    return number.toDouble() * mobileCoefficient;
  } else if (width < tabletBreakPointWidth || height < tabletBreakPointHeight) {
    return number.toDouble() * tabletCoefficient;
  } else if (width < laptopBreakPointWidth || height < laptopBreakPointHeight) {
    return number.toDouble() * laptopCoefficient;
  } else {
    return number.toDouble();
  }
}

double doubleByHeight(BuildContext context, num number) {
  final height = activeHeight(context);
  if (height < mobileBreakPointHeight) {
    return number.toDouble() * mobileCoefficient;
  } else if (height < tabletBreakPointHeight) {
    return number.toDouble() * tabletCoefficient;
  } else if (height < laptopBreakPointHeight) {
    return number.toDouble() * laptopCoefficient;
  } else {
    return number.toDouble();
  }
}

double doubleByWidth(BuildContext context, num number) {
  final width = activeWidth(context);
  if (width < mobileBreakPointWidth) {
    return number.toDouble() * mobileCoefficient;
  } else if (width < tabletBreakPointWidth) {
    return number.toDouble() * tabletCoefficient;
  } else if (width < laptopBreakPointWidth) {
    return number.toDouble() * laptopCoefficient;
  } else {
    return number.toDouble();
  }
}

double doubleByPercentHeight(BuildContext context, num percentOfHeight) {
  final height = activeHeight(context);
  if (height < mobileBreakPointHeight) {
    return height * percentOfHeight.toDouble() * mobileCoefficient;
  } else if (height < tabletBreakPointHeight) {
    return height * percentOfHeight.toDouble() * tabletCoefficient;
  } else if (height < laptopBreakPointHeight) {
    return height * percentOfHeight.toDouble() * laptopCoefficient;
  } else {
    return height * percentOfHeight.toDouble();
  }
}

double doubleByPercentWidth(BuildContext context, num percentOfWidth) {
  final width = activeWidth(context);
  if (width < mobileBreakPointWidth) {
    return width * percentOfWidth.toDouble() * mobileCoefficient;
  } else if (width < tabletBreakPointWidth) {
    return width * percentOfWidth.toDouble() * tabletCoefficient;
  } else if (width < laptopBreakPointWidth) {
    return percentOfWidth.toDouble() * laptopCoefficient;
  } else {
    return width * percentOfWidth.toDouble();
  }
}
