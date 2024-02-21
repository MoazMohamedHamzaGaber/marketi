import 'package:flutter/material.dart';
import 'package:marketi/Feature/Register/feature/view/widget/custom_image.dart';
import 'package:marketi/Feature/Register/feature/view/widget/section_text_field.dart';
import 'package:marketi/core/utils/components.dart';
import 'package:marketi/core/widget/custom_or_continue_with.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const CustomImage(),
              SectionTextField(
                emailController: emailController,
                passwordController: passwordController,
                confirmPasswordController: confirmPasswordController,
                nameController: nameController,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 13, bottom: 12, top: 14),
                child: buildContainer(
                  text: 'Sign Up',
                  function: () {
                    if (formKey.currentState!.validate()) {
                      print(nameController.text);
                      print(emailController.text);
                    }
                  },
                ),
              ),
              const CustomOrContinueWith(),
            ],
          ),
        ),
      ),
    );
  }
}
