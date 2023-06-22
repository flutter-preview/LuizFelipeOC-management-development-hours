class PasswordValidator {
  String? validate(String? value, type) {
    if (value == null || value.isEmpty) {
      return "Password is not empty";
    }

    if (type == "sign in") {
      return null;
    }

    if (value.length < 8) {
      return "The password need 8 characters";
    }

    return null;
  }
}
