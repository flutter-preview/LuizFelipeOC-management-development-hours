import 'package:flutter/material.dart';

import '../validators/email_validator.dart';
import '../validators/password_validator.dart';

final class FormSignInController {
  final emailValidator = EmailValidator();
  final passwordValidator = PasswordValidator();

  ValueNotifier<bool> signInLoading = ValueNotifier(false);
  ValueNotifier<bool> lockedInput = ValueNotifier(true);

  void simulatedSignIn() async {
    signInLoading.value = true;
    lockedInput.value = false;
    await Future.delayed(const Duration(seconds: 2));
    signInLoading.value = false;
    lockedInput.value = true;
  }
}
