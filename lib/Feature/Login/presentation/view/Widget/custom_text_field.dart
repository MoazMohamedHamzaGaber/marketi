import 'package:flutter/material.dart';

import '../../../../../core/utils/components.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.emailController, this.passwordController});

  final emailController;
  final passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTextField(
          controller: emailController,
          textInputType: TextInputType.emailAddress,
          prefixIcon: Icons.mail_outline,
          text: 'Username or Email',
          validateText: 'Email is empty',
        ),
        const SizedBox(
          height: 14,
        ),
        buildTextField(
          controller: passwordController,
          obscureText: true,
          textInputType: TextInputType.visiblePassword,
          prefixIcon: Icons.lock_outline,
          text: '**************',
          validateText: 'Password is empty',
          suffixIcon: Icons.visibility,
        ),
      ],
    );
  }
}
