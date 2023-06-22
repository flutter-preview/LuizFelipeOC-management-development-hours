class PasswordValidator {
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is not empty";
    }

    return null;
  }
}
