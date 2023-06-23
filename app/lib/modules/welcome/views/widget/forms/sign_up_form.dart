import 'package:flutter/material.dart';

import '../../../../../core/shared/app_text_styles.dart';
import '../../../controller/form_sign_up_controller.dart';
import '../../../controller/welcome_controller.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
    required this.widget,
  });

  final WelcomeController widget;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FormSignUpController formController = FormSignUpController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SIGN UP',
            style: AppTextStyles.heading,
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: formController.userName,
            validator: (value) => formController.userNameValidator.validate(
              value,
            ),
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Username",
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: formController.email,
            validator: (value) => formController.emailValidator.validate(value),
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "E-mail",
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: formController.password,
            obscureText: true,
            validator: (value) => formController.passwordValidator.validate(
              value,
              "sign up",
            ),
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Password",
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: formController.confirmPassword,
            validator: (value) =>
                formController.confirmPasswordValidator.validate(
              value,
              formController.password.text,
            ),
            obscureText: true,
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Confirma Password",
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                if (!_formKey.currentState!.validate()) {
                  return;
                }
              },
              child: const Text("REGISTER"),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                widget.widget.changeArea();
              },
              child: const Text("Return to login"),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
