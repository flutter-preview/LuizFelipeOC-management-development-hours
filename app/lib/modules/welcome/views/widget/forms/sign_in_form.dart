import 'package:flutter/material.dart';

import '../../../../../core/shared/app_colors.dart';
import '../../../../../core/shared/app_text_styles.dart';
import '../../../controller/form_sign_controller.dart';
import '../../../controller/welcome_controller.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({
    super.key,
    required this.welcomeController,
  });

  final WelcomeController welcomeController;

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  final FormSignInController formController = FormSignInController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SIGN IN',
            style: AppTextStyles.heading,
          ),
          const SizedBox(height: 20),
          ValueListenableBuilder(
            valueListenable: formController.lockedInput,
            builder: (BuildContext context, value, _) {
              return Column(
                children: [
                  TextFormField(
                    enabled: value,
                    validator: (value) =>
                        formController.emailValidator.validate(
                      value,
                    ),
                    style: AppTextStyles.text500,
                    cursorColor: AppColors.primary,
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      labelText: "E-mail",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    enabled: value,
                    validator: (value) =>
                        formController.passwordValidator.validate(
                      value,
                    ),
                    obscureText: true,
                    cursorColor: AppColors.primary,
                    style: AppTextStyles.text500,
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      labelText: "Senha",
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: ValueListenableBuilder(
              valueListenable: formController.signInLoading,
              builder: (BuildContext context, value, child) {
                return ElevatedButton(
                  onPressed: value
                      ? () {
                          FocusScope.of(context).unfocus();
                        }
                      : () async {
                          FocusScope.of(context).unfocus();

                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          formController.simulatedSignIn();
                        },
                  child: value
                      ? const CircularProgressIndicator(
                          strokeWidth: 0.8,
                        )
                      : const Text("LOGIN"),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                widget.welcomeController.changeArea();
              },
              child: const Text("No have account ? Create now"),
            ),
          )
        ],
      ),
    );
  }
}
