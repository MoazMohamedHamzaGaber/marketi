import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/components.dart';

class CustomBottomRegister extends StatelessWidget {
  const CustomBottomRegister(
      {super.key,
      required this.nameController,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController,
        required this.formKey,
        required this.cubit}
      );

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final  formKey;
  final cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 13, bottom: 12, top: 14),
      child: buildContainer(
        text: 'Sign Up',
        function: () {
          if (formKey.currentState!.validate()) {
            if (passwordController.text == confirmPasswordController.text) {
              cubit.userCreate(
                name: nameController.text,
                email: emailController.text,
                password: passwordController.text,
                passwordConfirm: confirmPasswordController.text,
                context: context,
              );
            } else {
              buildShowDialog(
                image: AppAssets.imagesWarning,
                name: 'Password MisMatch',
                function: () {
                  Navigator.pop(context);
                },
                context: context,
              );
            }
          }
        },
      ),
    );
  }
}
