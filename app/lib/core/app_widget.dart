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
      ),
      home: const SplashPage(),
    );
  }
}
