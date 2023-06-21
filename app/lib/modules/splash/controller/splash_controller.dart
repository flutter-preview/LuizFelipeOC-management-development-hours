import 'package:flutter/material.dart';

final class SplashController {
  ValueNotifier<bool> redirect = ValueNotifier(false);

  Future<bool> loading() async {
    await Future.delayed(const Duration(seconds: 1));

    return redirect.value = true;
  }
}
