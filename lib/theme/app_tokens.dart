import 'package:flutter/material.dart';

enum AppThemeType {midnightInk, sageCalm, warmPaper, duskPurple, oceanBreeze, monochrome}

class AppTokens {
  static const FontWeight weightRegular = FontWeight.w400;
  static const FontWeight weightMedium = FontWeight.w500;
  static const FontWeight weightSemiBold = FontWeight.w600;
  static const FontWeight weightBold = FontWeight.w700;

  static const double spacingXs = 4.0;
  static const double spacingSm = 8.0;
  static const double spacingMd = 16.0;
  static const double spacingLg = 24.0;
  static const double spacingXl = 32.0;

  static const double radiusSm = 8.0;
  static const double radiusMd = 16.0;
  static const double radiusLg = 24.0;

  static const Duration animFast = Duration(milliseconds: 150);
  static const Duration animNormal = Duration(milliseconds: 300);

  static const double breakMobile = 600.0;
  static const double breakTablet = 1024.0;

  static const double fontDisplayMobile = 32.0;
  static const double fontDisplayDesktop = 48.0;
  static const double fontH1Mobile = 24.0;
  static const double fontH1Desktop = 32.0;
  static const double fontH2Mobile = 18.0;
  static const double fontH2Desktop = 24.0;
  static const double fontBodyMobile = 12.0;
  static const double fontBodyDesktop = 16.0;
  static const double fontCaptionMobile = 10.0;
  static const double fontCaptionDesktop = 12.0;
}

extension ResponsiveTypography on BuildContext {
  bool get isDesktop => MediaQuery.sizeOf(this).width >= AppTokens.breakTablet;

  double get fontDisplay => isDesktop ? AppTokens.fontDisplayDesktop : AppTokens.fontDisplayMobile;
  double get fontH1 => isDesktop ? AppTokens.fontH1Desktop : AppTokens.fontH1Mobile;
  double get fontH2 => isDesktop ? AppTokens.fontH2Desktop : AppTokens.fontH2Mobile;
  double get fontBody => isDesktop ? AppTokens.fontBodyDesktop : AppTokens.fontBodyMobile;
  double get fontCaption => isDesktop ? AppTokens.fontCaptionDesktop : AppTokens.fontCaptionMobile;
}