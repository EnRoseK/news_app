import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

bool isLightMode(BuildContext context) {
  return MediaQuery.of(context).platformBrightness == Brightness.light;
}

Color textPrimary(bool isLightMode) {
  return isLightMode ? AppColors.textPrimaryLight : AppColors.textPrimaryDark;
}

Color textSecondary(bool isLightMode) {
  return isLightMode
      ? AppColors.textSecondaryLight
      : AppColors.textSecondaryDark;
}

Color textLink(bool isLightMode) {
  return isLightMode ? AppColors.textLinkLight : AppColors.textLinkDark;
}

Color textPlaceholder(bool isLightMode) {
  return isLightMode
      ? AppColors.textPlaceholderLight
      : AppColors.textPlaceholderDark;
}

Color brandBlue(bool isLightMode) {
  return isLightMode ? AppColors.brandBlueLight : AppColors.brandBlueDark;
}

Color brandBlue10(bool isLightMode) {
  return isLightMode ? AppColors.brandBlue10Light : AppColors.brandBlue10Dark;
}

Color backgroundPrimary(bool isLightMode) {
  return isLightMode
      ? AppColors.backgroundPrimaryLight
      : AppColors.backgroundPrimaryDark;
}

Color backgroundSecondary(bool isLightMode) {
  return isLightMode
      ? AppColors.backgroundSecondaryLight
      : AppColors.backgroundSecondaryDark;
}

Color systemSuccess(bool isLightMode) {
  return isLightMode
      ? AppColors.systemSuccessLight
      : AppColors.systemSuccessDark;
}

Color systemError(bool isLightMode) {
  return isLightMode ? AppColors.systemErrorLight : AppColors.systemErrorDark;
}

Color systemWarning(bool isLightMode) {
  return isLightMode
      ? AppColors.systemWarningLight
      : AppColors.systemWarningDark;
}

Color systemInformative(bool isLightMode) {
  return isLightMode
      ? AppColors.systemInformativeLight
      : AppColors.systemInformativeDark;
}

Color grey7(bool isLightMode) {
  return isLightMode ? AppColors.grey7Light : AppColors.grey7Dark;
}

Color grey6(bool isLightMode) {
  return isLightMode ? AppColors.grey6Light : AppColors.grey6Dark;
}

Color grey5(bool isLightMode) {
  return isLightMode ? AppColors.grey5Light : AppColors.grey5Dark;
}

Color grey4(bool isLightMode) {
  return isLightMode ? AppColors.grey4Light : AppColors.grey4Dark;
}

Color grey3(bool isLightMode) {
  return isLightMode ? AppColors.grey3Light : AppColors.grey3Dark;
}

Color grey2(bool isLightMode) {
  return isLightMode ? AppColors.grey2Light : AppColors.grey2Dark;
}

Color grey1(bool isLightMode) {
  return isLightMode ? AppColors.grey1Light : AppColors.grey1Dark;
}

Color blue7(bool isLightMode) {
  return isLightMode ? AppColors.blue7Light : AppColors.blue7Dark;
}

Color blue6(bool isLightMode) {
  return isLightMode ? AppColors.blue6Light : AppColors.blue6Dark;
}

Color blue5(bool isLightMode) {
  return isLightMode ? AppColors.blue5Light : AppColors.blue5Dark;
}

Color blue4(bool isLightMode) {
  return isLightMode ? AppColors.blue4Light : AppColors.blue4Dark;
}

Color blue3(bool isLightMode) {
  return isLightMode ? AppColors.blue3Light : AppColors.blue3Dark;
}

Color blue2(bool isLightMode) {
  return isLightMode ? AppColors.blue2Light : AppColors.blue2Dark;
}

Color blue1(bool isLightMode) {
  return isLightMode ? AppColors.blue1Light : AppColors.blue1Dark;
}

Color red7(bool isLightMode) {
  return isLightMode ? AppColors.red7Light : AppColors.red7Dark;
}

Color red6(bool isLightMode) {
  return isLightMode ? AppColors.red6Light : AppColors.red6Dark;
}

Color red5(bool isLightMode) {
  return isLightMode ? AppColors.red5Light : AppColors.red5Dark;
}

Color red4(bool isLightMode) {
  return isLightMode ? AppColors.red4Light : AppColors.red4Dark;
}

Color red3(bool isLightMode) {
  return isLightMode ? AppColors.red3Light : AppColors.red3Dark;
}

Color red2(bool isLightMode) {
  return isLightMode ? AppColors.red2Light : AppColors.red2Dark;
}

Color red1(bool isLightMode) {
  return isLightMode ? AppColors.red1Light : AppColors.red1Dark;
}

Color orange7(bool isLightMode) {
  return isLightMode ? AppColors.orange7Light : AppColors.orange7Dark;
}

Color orange6(bool isLightMode) {
  return isLightMode ? AppColors.orange6Light : AppColors.orange6Dark;
}

Color orange5(bool isLightMode) {
  return isLightMode ? AppColors.orange5Light : AppColors.orange5Dark;
}

Color orange4(bool isLightMode) {
  return isLightMode ? AppColors.orange4Light : AppColors.orange4Dark;
}

Color orange3(bool isLightMode) {
  return isLightMode ? AppColors.orange3Light : AppColors.orange3Dark;
}

Color orange2(bool isLightMode) {
  return isLightMode ? AppColors.orange2Light : AppColors.orange2Dark;
}

Color orange1(bool isLightMode) {
  return isLightMode ? AppColors.orange1Light : AppColors.orange1Dark;
}

Color green7(bool isLightMode) {
  return isLightMode ? AppColors.green7Light : AppColors.green7Dark;
}

Color green6(bool isLightMode) {
  return isLightMode ? AppColors.green6Light : AppColors.green6Dark;
}

Color green5(bool isLightMode) {
  return isLightMode ? AppColors.green5Light : AppColors.green5Dark;
}

Color green4(bool isLightMode) {
  return isLightMode ? AppColors.green4Light : AppColors.green4Dark;
}

Color green3(bool isLightMode) {
  return isLightMode ? AppColors.green3Light : AppColors.green3Dark;
}

Color green2(bool isLightMode) {
  return isLightMode ? AppColors.green2Light : AppColors.green2Dark;
}

Color green1(bool isLightMode) {
  return isLightMode ? AppColors.green1Light : AppColors.green1Dark;
}
