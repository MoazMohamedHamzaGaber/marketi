import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi/Feature/Login/presentation/view/Widget/custom_button_register.dart';
import 'package:marketi/Feature/Login/presentation/view/Widget/custom_text_field.dart';
import 'package:marketi/Feature/Login/presentation/view/Widget/forget_password.dart';
import 'package:marketi/core/utils/app_assets.dart';
import 'package:marketi/core/utils/components.dart';

import 'custom_or_continue_with.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          left: 22,
          right: 22,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SvgPicture.asset(
                AppAssets.imagesIllustrationOnboarding3,
                width: 272,
                height: 232,
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextField(
                  emailController: emailController,
                  passwordController: passwordController),
              const SizedBox(
                height: 7,
              ),
              const ForgetPassword(),
              const SizedBox(
                height: 21,
              ),
              buildContainer(
                text: 'Log In',
                function: () {
                  //if(formKey.currentState!.validate()){
                    print(emailController.text);
                    print(passwordController.text);
              //    }
                },
              ),
              const SizedBox(
                height: 14,
              ),
              const CustomOrContinueWith(),
              const SizedBox(
                height: 14,
              ),
               const CustomButtonRegister(),
            ],
          ),
        ),
      ),
    );
  }
}
