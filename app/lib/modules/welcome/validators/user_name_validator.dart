class UserNameValidator {
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return "Username is empty";
    }

    if (value.length >= 15) {
      return "This username is much longer";
    }

    return null;
  }
}
