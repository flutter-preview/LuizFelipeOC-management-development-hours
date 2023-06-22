class EmailValidator {
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return "This email is empty";
    }

    final emailIsValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(
      value,
    );

    if (!emailIsValid) {
      return "This email is invalid";
    }

    return null;
  }
}
