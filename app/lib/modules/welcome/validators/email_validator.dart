class EmailValidator {
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return "The email is empty";
    }

    final emailIsValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(
      value,
    );

    if (!emailIsValid) {
      return "The emails is invalid";
    }

    return null;
  }
}
