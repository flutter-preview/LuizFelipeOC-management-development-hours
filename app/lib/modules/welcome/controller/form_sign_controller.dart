import '../validators/email_validator.dart';
import '../validators/password_validator.dart';

final class FormSignInController {
  final emailValidator = EmailValidator();
  final passwordValidator = PasswordValidator();
}
