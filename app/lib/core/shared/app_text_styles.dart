import 'package:app/core/shared/app_colors.dart';
import 'package:flutter/material.dart';

final class AppTextStyles {
  static TextStyle heading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static TextStyle heading500 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static TextStyle textBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static TextStyle bodyBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static TextStyle body500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static TextStyle error300 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.red,
  );

  static TextStyle error500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.red,
  );

  static TextStyle text500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
}
