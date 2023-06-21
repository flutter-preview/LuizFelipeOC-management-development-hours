import 'package:flutter/material.dart';

class WelcomeController {
  ValueNotifier<bool> animation1 = ValueNotifier(false);
  ValueNotifier<bool> animation2 = ValueNotifier(false);
  ValueNotifier<bool> animation3 = ValueNotifier(false);

  void welcomeAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animation1.value = true;

    await Future.delayed(const Duration(milliseconds: 500));
    animation2.value = true;

    await Future.delayed(const Duration(milliseconds: 500));
    animation3.value = true;

    return;
  }
}
