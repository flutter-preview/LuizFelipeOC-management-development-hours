import 'package:flutter/material.dart';

import '../../../../../core/shared/app_images.dart';
import '../../../../../core/shared/app_text_styles.dart';
import '../../../../../core/shared/widgets/svg_widget/svg_widget.dart';
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
    return ValueListenableBuilder(
      valueListenable: formController.finish,
      builder: (context, value, child) {
        return AnimatedCrossFade(
          firstCurve: Curves.bounceInOut,
          secondCurve: Curves.easeInOut,
          duration: const Duration(milliseconds: 350),
          crossFadeState:
              value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'REGISTERED',
                style: AppTextStyles.heading,
              ),
              const SizedBox(height: 30),
              Center(
                child: SvgWidget(
                  pathSvg: AppImages.secondaryImage,
                  width: MediaQuery.of(context).size.width * .5,
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: Text(
                  'Thank You!\n your account has been createded with success!',
                  style: AppTextStyles.bodyBold,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 56,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: const Text("START"),
                  onPressed: () {},
                ),
              )
            ],
          ),
          secondChild: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SIGN UP',
                  style: AppTextStyles.heading,
                ),
                ValueListenableBuilder(
                  valueListenable: formController.isLockedInput,
                  builder: (BuildContext context, value, _) {
                    return Column(
                      children: [
                        TextFormField(
                          enabled: value,
                          controller: formController.userName,
                          validator: (value) =>
                              formController.userNameValidator.validate(
                            value,
                          ),
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            labelText: "Username",
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          enabled: value,
                          controller: formController.email,
                          validator: (value) =>
                              formController.emailValidator.validate(value),
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            labelText: "E-mail",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          enabled: value,
                          controller: formController.password,
                          obscureText: true,
                          validator: (value) =>
                              formController.passwordValidator.validate(
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
                          enabled: value,
                          controller: formController.confirmPassword,
                          validator: (value) =>
                              formController.confirmPasswordValidator.validate(
                            value,
                            formController.password.text,
                          ),
                          obscureText: true,
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            labelText: "Confirm Password",
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  child: ValueListenableBuilder(
                    valueListenable: formController.processingRegister,
                    builder: (BuildContext context, value, _) {
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

                                formController.signUp();
                              },
                        child: value
                            ? const CircularProgressIndicator(
                                strokeWidth: 0.5,
                              )
                            : const Text("REGISTER"),
                      );
                    },
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
          ),
        );
      },
    );
  }
}
