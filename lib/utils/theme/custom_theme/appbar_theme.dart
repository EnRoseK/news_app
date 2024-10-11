import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static const AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: AppColors.brandBlue10Light,
    elevation: 0,
    scrolledUnderElevation: 0,
  );

  static const AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: AppColors.brandBlue10Dark,
    elevation: 0,
    scrolledUnderElevation: 0,
  );
}
