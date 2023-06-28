import 'package:flutter/material.dart';

import '../modules/splash/views/splash_page.dart';
import 'shared/app_colors.dart';
import 'shared/app_text_styles.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Jost',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            backgroundColor: MaterialStatePropertyAll<Color>(
              AppColors.darkBlue,
            ),
            textStyle: MaterialStatePropertyAll<TextStyle>(
              AppTextStyles.textBold,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll<Color>(AppColors.primary),
            textStyle: MaterialStatePropertyAll<TextStyle>(
              AppTextStyles.body500,
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15),
              ),
            ),
            overlayColor: MaterialStatePropertyAll<Color>(
              AppColors.primary.withOpacity(0.2),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              strokeAlign: 0.9,
              color: AppColors.primary,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              strokeAlign: 0.5,
              color: AppColors.primary,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              strokeAlign: 0.8,
              color: AppColors.red,
            ),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              strokeAlign: 1,
              color: AppColors.red,
            ),
          ),
          labelStyle: AppTextStyles.text500,
          errorStyle: AppTextStyles.error500,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.white,
        ),
        appBarTheme: AppBarTheme(
          color: AppColors.primary,
          elevation: 0,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.primary,
          elevation: 10,
          iconSize: 15,
          extendedTextStyle: AppTextStyles.bodyWhite500,
        ),
      ),
      home: const SplashPage(),
    );
  }
}
