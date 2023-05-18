import 'package:flutter/material.dart';
import 'package:json_theme/json_theme.dart';

import 'client_color_defaults.dart';

@immutable
class ClientColorExtensions extends ThemeExtension<ClientColorExtensions> {
  const ClientColorExtensions({
    required this.notification,
    required this.onNotification,
  });

  factory ClientColorExtensions.fromJson(
      Map<String, dynamic> json, Brightness brightness) {
    final defaultExtension = defaultColorExtension(brightness);

    return ClientColorExtensions(
      notification: ThemeDecoder.decodeColor(json['notification']) ??
          defaultExtension.notification,
      onNotification: ThemeDecoder.decodeColor(json['onNotification']) ??
          defaultExtension.onNotification,
    );
  }

  final Color notification;
  final Color onNotification;

  @override
  ThemeExtension<ClientColorExtensions> copyWith({
    Color? notification,
    Color? onNotification,
  }) {
    return ClientColorExtensions(
        notification: notification ?? this.notification,
        onNotification: onNotification ?? this.onNotification);
  }

  @override
  ThemeExtension<ClientColorExtensions> lerp(
      covariant ThemeExtension<ClientColorExtensions>? other, double t) {
    if (other is! ClientColorExtensions) {
      return this;
    }
    return ClientColorExtensions(
      notification: Color.lerp(notification, other.notification, t)!,
      onNotification: Color.lerp(onNotification, other.onNotification, t)!,
    );
  }
}
