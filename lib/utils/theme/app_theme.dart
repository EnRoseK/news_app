import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';
import 'package:news_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:news_app/utils/theme/custom_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundPrimaryLight,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    textTheme: CustomTextTheme.lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundPrimaryDark,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    textTheme: CustomTextTheme.darkTextTheme,
  );
}
