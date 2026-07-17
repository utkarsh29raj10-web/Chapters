import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_tokens.dart';
import 'app_colors_extension.dart';

export 'app_tokens.dart';
export 'app_colors_extension.dart';

class AppTheme {
  static ThemeData getTheme(AppThemeType type, bool isDark) {
    final baseTextTheme = GoogleFonts.quicksandTextTheme();
    final loraFont = GoogleFonts.lora();
    final corinthiaFont = GoogleFonts.corinthia();

    final customTextTheme = baseTextTheme.copyWith(
      displayLarge: loraFont,
      displayMedium: loraFont,
      displaySmall: loraFont,
      headlineLarge: corinthiaFont,
      headlineMedium: corinthiaFont,
    );

    ColorScheme colorScheme;
    AppColorsExtension customColors;

    switch (type) {
      case AppThemeType.midnightInk:
        colorScheme = isDark
            ? const ColorScheme.dark(surface: Color(0xFF162336), primary: Color(0xFF6C90D8), secondary: Color(0xFFD8B775), onSurface: Color(0xFFF6F7FB), error: Color(0xFFC4554D))
            : const ColorScheme.light(surface: Color(0xFFFFFFFF), primary: Color(0xFF183153), secondary: Color(0xFFC6A15B), onSurface: Color(0xFF182230), error: Color(0xFFC4554D),);

        customColors = isDark
            ? const AppColorsExtension(surfaceAlt: Color(0xFFEEF3F8), primaryHover: Color(0xFF22406B), primaryLight: Color(0xFF5A78A8), textSecondary: Color(0xFF64748B), border: Color(0xFFD8E1EA), success: Color(0xFF4F8A66))
            : const AppColorsExtension(surfaceAlt: Color(0xFFEEF3F8), primaryHover: Color(0xFF22406B), primaryLight: Color(0xFF5A78A8), textSecondary: Color(0xFF64748B), border: Color(0xFFD8E1EA), success: Color(0xFF4F8A66));

        break;

      case AppThemeType.sageCalm:
        colorScheme = isDark
            ? const ColorScheme.dark(surface: Color(0xFF183126), primary: Color(0xFF82B89B), secondary: Color(0xFFD7C89B), onSurface: Color(0xFFF3F8F4), error: Color(0xFFBB5959))
            : const ColorScheme.light(surface: Color(0xFFFFFFFF), primary: Color(0xFF2E5B47), secondary: Color(0xFFD7C89B), onSurface: Color(0xFF22332C), error: Color(0xFFBB5959));
        customColors = isDark
            ? const AppColorsExtension(surfaceAlt: Color(0xFFEDF5EF), primaryHover: Color(0xFF396C56), primaryLight: Color(0xFF7EA68C), textSecondary: Color(0xFF5F7268), border: Color(0xFFD4E3D7), success: Color(0xFF4C8B60))
            : const AppColorsExtension(surfaceAlt: Color(0xFFEDF5EF), primaryHover: Color(0xFF396C56), primaryLight: Color(0xFF7EA68C), textSecondary: Color(0xFF5F7268), border: Color(0xFFD4E3D7), success: Color(0xFF4C8B60));
        break;

      case AppThemeType.warmPaper:
        colorScheme = isDark
            ? const ColorScheme.dark(surface: Color(0xFF342821), primary: Color(0xFFE39467), secondary: Color(0xFFD49A73), onSurface: Color(0xFFFFF7F2), error: Color(0xFFC4554D))
            : const ColorScheme.light(surface: Color(0xFFFFFFFF), primary: Color(0xFFBA6236), secondary: Color(0xFF6E4D3A), onSurface: Color(0xFF382C25), error: Color(0xFFC4554D));
        customColors = isDark
            ? const AppColorsExtension(surfaceAlt: Color(0xFFF6ECE3), primaryHover: Color(0xFFA9552D), primaryLight: Color(0xFFD49A73), textSecondary: Color(0xFF736256), border: Color(0xFFE7D5C7), success: Color(0xFF6B8E63))
            : const AppColorsExtension(surfaceAlt: Color(0xFFF6ECE3), primaryHover: Color(0xFFA9552D), primaryLight: Color(0xFFD49A73), textSecondary: Color(0xFF736256), border: Color(0xFFE7D5C7), success: Color(0xFF6B8E63));
        break;

      case AppThemeType.duskPurple:
        colorScheme = isDark
            ? const ColorScheme.dark(surface: Color(0xFF29203A), primary: Color(0xFFB89AE6), secondary: Color(0xFFF0C9A8), onSurface: Color(0xFFF8F5FD), error: Color(0xFFC05656))
            : const ColorScheme.light(surface: Color(0xFFFFFFFF), primary: Color(0xFF5A3F87), secondary: Color(0xFFF0C9A8), onSurface: Color(0xFF30243E), error: Color(0xFFC05656));
        customColors = isDark
            ? const AppColorsExtension(surfaceAlt: Color(0xFFF3ECFA), primaryHover: Color(0xFF6B4C9E), primaryLight: Color(0xFFA88FD2), textSecondary: Color(0xFF6A6177), border: Color(0xFFE2D8F1), success: Color(0xFF5B8B63))
            : const AppColorsExtension(surfaceAlt: Color(0xFFF3ECFA), primaryHover: Color(0xFF6B4C9E), primaryLight: Color(0xFFA88FD2), textSecondary: Color(0xFF6A6177), border: Color(0xFFE2D8F1), success: Color(0xFF5B8B63));
        break;

      case AppThemeType.oceanBreeze:
        colorScheme = isDark
            ? const ColorScheme.dark(surface: Color(0xFF18313B), primary: Color(0xFF7CC2D3), secondary: Color(0xFF4FA3B5), onSurface: Color(0xFFF6FAFC), error: Color(0xFFC25555))
            : const ColorScheme.light(surface: Color(0xFFFFFFFF), primary: Color(0xFF2F7284), secondary: Color(0xFF4FA3B5), onSurface: Color(0xFF1C2C35), error: Color(0xFFC25555));
        customColors = isDark
            ? const AppColorsExtension(surfaceAlt: Color(0xFFECF7FA), primaryHover: Color(0xFF397F92), primaryLight: Color(0xFF79B5C6), textSecondary: Color(0xFF617681), border: Color(0xFFD5E8EE), success: Color(0xFF4B8B74))
            : const AppColorsExtension(surfaceAlt: Color(0xFFECF7FA), primaryHover: Color(0xFF397F92), primaryLight: Color(0xFF79B5C6), textSecondary: Color(0xFF617681), border: Color(0xFFD5E8EE), success: Color(0xFF4B8B74));
        break;

      case AppThemeType.monochrome:
        colorScheme = isDark
            ? const ColorScheme.dark(surface: Color(0xFF1D1D1D), primary: Color(0xFFE5E5E5), secondary: Color(0xFFA8A8A8), onSurface: Color(0xFFFFFFFF), error: Color(0xFFB94C4C))
            : const ColorScheme.light(surface: Color(0xFFFFFFFF), primary: Color(0xFF222222), secondary: Color(0xFFA8A8A8), onSurface: Color(0xFF1A1A1A), error: Color(0xFFB94C4C));
        customColors = isDark
            ? const AppColorsExtension(surfaceAlt: Color(0xFFF1F1F1), primaryHover: Color(0xFF3A3A3A), primaryLight: Color(0xFF757575), textSecondary: Color(0xFF666666), border: Color(0xFFDDDDDD), success: Color(0xFF5D7D63))
            : const AppColorsExtension(surfaceAlt: Color(0xFFF1F1F1), primaryHover: Color(0xFF3A3A3A), primaryLight: Color(0xFF757575), textSecondary: Color(0xFF666666), border: Color(0xFFDDDDDD), success: Color(0xFF5D7D63));
        break;
    }

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      textTheme: customTextTheme,
      extensions: [customColors],
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
      ),
    );
  }
}

class ThemeState {
  final AppThemeType type;
  final bool isDark;

  const ThemeState({
    this.type = AppThemeType.midnightInk,
    this.isDark = false
  });
  ThemeState copyWith({AppThemeType? type, bool? isDark}) {
    return ThemeState(
      type: type ?? this.type,
      isDark: isDark ?? this.isDark,
    );
  }
}

class ThemeController extends Notifier<ThemeState> {
  @override
  ThemeState build() {
    return const ThemeState();
  }
  void setThemeType(AppThemeType type) {
    state = state.copyWith(type: type);
  }
  void toggleDarkMode() {
    state = state.copyWith(isDark: !state.isDark);
  }
}
final themeProvider = NotifierProvider<ThemeController, ThemeState>(() {
  return ThemeController();
});