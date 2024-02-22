import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/Register/feature/manage/cubit/register_cubit.dart';
import 'package:marketi/Feature/Register/feature/manage/cubit/register_states.dart';
import 'package:marketi/Feature/Register/feature/view/widget/password_validator.dart';

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
                controller: nameController,
                  validateFunction: (value) {
                    if (value!.isEmpty) {
                      return 'Name is required';
                    }
                    return null;
                  }
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
                controller: emailController,
                  validateFunction: (value) {
                    if (value!.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  }
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
              PasswordValidator(
                  controller: passwordController,
                cubit: cubit,
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
          PasswordValidator(
            controller: confirmPasswordController,
            cubit: cubit,
          ),
            ],
          ),
        );
      },
    );
  }
}
