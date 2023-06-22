import 'package:flutter/material.dart';

import '../../../../core/shared/app_colors.dart';
import '../../controller/welcome_controller.dart';
import 'forms/sign_in_form.dart';
import 'forms/sign_up_form.dart';

class DialogAnimated extends StatefulWidget {
  const DialogAnimated({
    super.key,
    required this.controller,
  });

  final WelcomeController controller;

  @override
  State<DialogAnimated> createState() => _DialogAnimatedState();
}

class _DialogAnimatedState extends State<DialogAnimated> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: BottomSheet(
        backgroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        onClosing: () {},
        builder: (_) => AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ValueListenableBuilder(
              valueListenable: widget.controller.changeForm,
              builder: (BuildContext context, value, _) {
                return AnimatedCrossFade(
                  secondCurve: Curves.easeInOut,
                  crossFadeState: value
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 350),
                  firstChild: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FormSignIn(
                            welcomeController: widget.controller,
                          ),
                        ],
                      ),
                    ),
                  ),
                  secondChild: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ValueListenableBuilder(
                        valueListenable: widget.controller.changeForm,
                        builder: (BuildContext context, value, _) {
                          return SignUpForm(widget: widget.controller);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
