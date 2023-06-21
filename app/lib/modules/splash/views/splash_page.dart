import 'package:flutter/material.dart';

import '../../../core/shared/app_images.dart';
import '../../../core/shared/widgets/svg_widget/svg_widget.dart';
import '../../welcome/views/welcome_page.dart';
import '../controller/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashController controller = SplashController();

  @override
  void initState() {
    controller.loading();

    controller.redirect.addListener(
      () {
        if (mounted) {
          if (controller.redirect.value) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => const WelcomePage(),
              ),
            );
          }
        }
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgWidget(
          pathSvg: AppImages.firstImage,
          width: MediaQuery.of(context).size.width * .5,
        ),
      ),
    );
  }
}
