import 'package:flutter/material.dart';

import '../../../../../core/shared/app_text_styles.dart';

class FormSignIn extends StatelessWidget {
  const FormSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SING IN',
            style: AppTextStyles.heading,
          ),
          const SizedBox(height: 20),
          TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "E-mail",
            ),
          ),
          TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              labelText: "Senha",
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("LOGIN"),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {},
              child: const Text("No have account ? Create now"),
            ),
          )
        ],
      ),
    );
  }
}
