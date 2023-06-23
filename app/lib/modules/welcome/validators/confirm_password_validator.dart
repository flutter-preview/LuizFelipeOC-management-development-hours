class ConfirmPasswordValidator {
  String? validate(String? value, password) {
    if (value == null || value.isEmpty) {
      return "Confirm password is empty";
    }

    if (value != password) {
      return "The password are differ";
    }

    return null;
  }
}
