import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class CustomTextTheme {
  CustomTextTheme._();

  static const TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 48, // H1
      fontWeight: FontWeight.w700,
      height: 50 / 48,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 40, // H2
      fontWeight: FontWeight.w700,
      height: 48 / 40,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 32, // H3
      fontWeight: FontWeight.w600,
      height: 40 / 32,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 24, // H4
      fontWeight: FontWeight.w600,
      height: 28 / 24,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 18, // H5
      fontWeight: FontWeight.w600,
      height: 24 / 18,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Merriweather',
      fontSize: 16, // Body 1 (600)
      fontWeight: FontWeight.w600,
      height: 26 / 16,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Merriweather',
      fontSize: 16, // Body 1 (400)
      fontWeight: FontWeight.w400,
      height: 30 / 16,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 14, // Body 2 (600)
      fontWeight: FontWeight.w600,
      height: 20 / 14,
      letterSpacing: 0,
      color: AppColors.textSecondaryLight,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 14, // Body 2 (400)
      fontWeight: FontWeight.w400,
      height: 20 / 14,
      letterSpacing: 0,
      color: AppColors.textSecondaryLight,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 20, // Button 1
      fontWeight: FontWeight.w600,
      height: 24 / 20,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 16, // Button 2
      fontWeight: FontWeight.w600,
      height: 20 / 16,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 12, // Footnote (600)
      fontWeight: FontWeight.w600,
      height: 18 / 12,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 12, // Footnote (400)
      fontWeight: FontWeight.w400,
      height: 18 / 12,
      letterSpacing: 0,
      color: AppColors.textPrimaryLight,
    ),
  );

  static const TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 48, // H1
      fontWeight: FontWeight.w700,
      height: 50 / 48,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 40, // H2
      fontWeight: FontWeight.w700,
      height: 48 / 40,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 32, // H3
      fontWeight: FontWeight.w600,
      height: 40 / 32,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 24, // H4
      fontWeight: FontWeight.w600,
      height: 28 / 24,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 18, // H5
      fontWeight: FontWeight.w600,
      height: 24 / 18,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Merriweather',
      fontSize: 16, // Body 1 (600)
      fontWeight: FontWeight.w600,
      height: 26 / 16,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Merriweather',
      fontSize: 16, // Body 1 (400)
      fontWeight: FontWeight.w400,
      height: 30 / 16,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 14, // Body 2 (600)
      fontWeight: FontWeight.w600,
      height: 20 / 14,
      letterSpacing: 0,
      color: AppColors.textSecondaryDark,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 14, // Body 2 (400)
      fontWeight: FontWeight.w400,
      height: 20 / 14,
      letterSpacing: 0,
      color: AppColors.textSecondaryDark,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 20, // Button 1
      fontWeight: FontWeight.w600,
      height: 24 / 20,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 16, // Button 2
      fontWeight: FontWeight.w600,
      height: 20 / 16,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 12, // Footnote (600)
      fontWeight: FontWeight.w600,
      height: 18 / 12,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 12, // Footnote (400)
      fontWeight: FontWeight.w400,
      height: 18 / 12,
      letterSpacing: 0,
      color: AppColors.textPrimaryDark,
    ),
  );
}
