import '../validators/email_validator.dart';
import '../validators/password_validator.dart';

class FormSignUpController {
  EmailValidator emailValidator = EmailValidator();
  PasswordValidator passwordValidator = PasswordValidator();
}
