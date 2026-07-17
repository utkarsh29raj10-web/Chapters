import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  final Color surfaceAlt;
  final Color primaryHover;
  final Color primaryLight;
  final Color textSecondary;
  final Color border;
  final Color success;

  const AppColorsExtension({
    required this.surfaceAlt,
    required this.primaryHover,
    required this.primaryLight,
    required this.textSecondary,
    required this.border,
    required this.success,
  });

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? surfaceAlt,
    Color? primaryHover,
    Color? primaryLight,
    Color? textSecondary,
    Color? border,
    Color? success,
  }) {
    return AppColorsExtension(
      surfaceAlt: surfaceAlt ?? this.surfaceAlt,
      primaryHover: primaryHover ?? this.primaryHover,
      primaryLight: primaryLight ?? this.primaryLight,
      textSecondary: textSecondary ?? this.textSecondary,
      border: border ?? this.border,
      success: success ?? this.success,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(ThemeExtension<AppColorsExtension> ? other, double t) {
    if (other is! AppColorsExtension) return this;

    return AppColorsExtension(
      surfaceAlt: Color.lerp(surfaceAlt, other.surfaceAlt, t)!,
      primaryHover: Color.lerp(primaryHover, other.primaryHover, t)!,
      primaryLight: Color.lerp(primaryLight, other.primaryLight, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      border: Color.lerp(border, other.border, t)!,
      success: Color.lerp(success, other.success, t)!,
    );
  }
}