import 'package:flutter/material.dart';

import '../validators/confirm_password_validator.dart';
import '../validators/email_validator.dart';
import '../validators/password_validator.dart';
import '../validators/user_name_validator.dart';

class FormSignUpController {
  EmailValidator emailValidator = EmailValidator();
  PasswordValidator passwordValidator = PasswordValidator();
  UserNameValidator userNameValidator = UserNameValidator();
  ConfirmPasswordValidator confirmPasswordValidator =
      ConfirmPasswordValidator();

  TextEditingController email = TextEditingController(text: "");
  TextEditingController password = TextEditingController(text: "");
  TextEditingController confirmPassword = TextEditingController(text: "");
  TextEditingController userName = TextEditingController(text: "");
}
