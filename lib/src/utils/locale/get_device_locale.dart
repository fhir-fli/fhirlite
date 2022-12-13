import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Locale? getDeviceLocale() {
  final currentLocaleString = Intl.getCurrentLocale();
  return currentLocaleString.isNotEmpty ? Locale(currentLocaleString) : null;
}
