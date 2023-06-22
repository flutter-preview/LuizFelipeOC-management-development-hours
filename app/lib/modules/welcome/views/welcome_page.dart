import 'package:flutter/material.dart';

import '../../../core/shared/app_images.dart';
import '../../../core/shared/app_text_styles.dart';
import '../../../core/shared/widgets/svg_widget/svg_widget.dart';
import '../controller/welcome_controller.dart';
import 'widget/dialog_animated_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  WelcomeController controller = WelcomeController();

  @override
  void initState() {
    controller.welcomeAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                alignment: Alignment.topLeft,
                child: ValueListenableBuilder(
                  valueListenable: controller.animation1,
                  builder: (BuildContext context, value, _) {
                    return AnimatedCrossFade(
                      secondCurve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 500),
                      crossFadeState: value
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      firstChild: Container(),
                      secondChild: SvgWidget(
                        pathSvg: AppImages.firstImage,
                        width: screen.width * .50,
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50),
                alignment: Alignment.topRight,
                child: ValueListenableBuilder(
                  valueListenable: controller.animation2,
                  builder: (BuildContext context, value, _) {
                    return AnimatedCrossFade(
                      duration: const Duration(milliseconds: 500),
                      firstChild: Container(),
                      crossFadeState: value
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      secondChild: SvgWidget(
                        pathSvg: AppImages.secondaryImage,
                        width: screen.width * .50,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 100),
              ValueListenableBuilder(
                valueListenable: controller.animation3,
                builder: (BuildContext context, dynamic value, Widget? child) {
                  return AnimatedCrossFade(
                    crossFadeState: value
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 500),
                    firstChild: Container(),
                    secondChild: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: "WELCOME!\n ",
                        style: AppTextStyles.heading500,
                        children: [
                          TextSpan(
                            text: "WE HOPE THAT BE READY TO BEGIN.",
                            style: AppTextStyles.heading,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 45),
              ValueListenableBuilder(
                valueListenable: controller.animation3,
                builder: (BuildContext context, value, _) {
                  return AnimatedCrossFade(
                    duration: const Duration(milliseconds: 500),
                    firstChild: Container(),
                    crossFadeState: value
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    secondChild: Column(
                      children: [
                        SizedBox(
                          height: 56,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                context: context,
                                builder: (_) => DialogAnimated(
                                  controller: controller,
                                ),
                              );
                            },
                            child: const Text("Start Now"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
