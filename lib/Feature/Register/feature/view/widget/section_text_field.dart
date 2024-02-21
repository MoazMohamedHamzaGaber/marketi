import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/Register/feature/manage/cubit/register_cubit.dart';
import 'package:marketi/Feature/Register/feature/manage/cubit/register_states.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/components.dart';

class SectionTextField extends StatelessWidget {
  const SectionTextField({super.key, this.emailController, this.nameController, this.passwordController, this.confirmPasswordController});

  final nameController;
  final emailController;
  final passwordController;
  final confirmPasswordController;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=RegisterCubit().get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your Name',
                style: AppStyles.styleMedium12,
              ),
              const SizedBox(
                height: 2,
              ),
              buildTextField(
                textInputType: TextInputType.text,
                prefixIcon: Icons.person_2_outlined,
                text: 'Full Name',
                validateText: 'Name is empty',
                controller: nameController,
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Email',
                style: AppStyles.styleMedium12,
              ),
              const SizedBox(
                height: 2,
              ),
              buildTextField(
                textInputType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
                text: 'You@gmail.com',
                validateText: 'Email is empty',
                controller: emailController,
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Password',
                style: AppStyles.styleMedium12,
              ),
              const SizedBox(
                height: 2,
              ),
              buildTextField(
                textInputType: TextInputType.visiblePassword,
                prefixIcon: Icons.lock_outline,
                text: '**************',
                validateText: 'Password is empty',
                controller: passwordController,
                suffixIcon:cubit.obscureText? Icons.visibility :Icons.visibility_off,
                suffixFunction: (){
                  cubit.changeObscureText();
                },
                obscureText: cubit.obscureText,
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Confirm Password',
                style: AppStyles.styleMedium12,
              ),
              const SizedBox(
                height: 2,
              ),
              buildTextField(
                textInputType: TextInputType.visiblePassword,
                prefixIcon: Icons.lock_outline,
                text: '**************',
                validateText: 'Password is empty',
                controller: confirmPasswordController,
                suffixIcon:cubit.obscureText? Icons.visibility :Icons.visibility_off,
                suffixFunction: (){
                  cubit.changeObscureText();
                },
                obscureText: cubit.obscureText,
              ),
            ],
          ),
        );
      },
    );
  }
}
