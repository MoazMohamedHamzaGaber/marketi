import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/Login/presentation/manage/cubit/login_cubit.dart';
import 'package:marketi/Feature/Login/presentation/manage/cubit/login_states.dart';

import '../../../../../core/utils/components.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key, this.emailController, this.passwordController});

  final emailController;
  final passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=LoginCubit().get(context);
        return Column(
          children: [
            buildTextField(
              controller: emailController,
              textInputType: TextInputType.emailAddress,
              prefixIcon: Icons.mail_outline,
              text: 'Username or Email',
                validateFunction: (value) {
                  if (value!.isEmpty) {
                    return 'Email is empty';
                  }
                  return null;
                }
            ),
            const SizedBox(
              height: 14,
            ),
            buildTextField(
                controller: passwordController,
                obscureText: cubit.obscureText,
                textInputType: TextInputType.visiblePassword,
                prefixIcon: Icons.lock_outline,
                text: '**************',
                suffixIcon:cubit.obscureText? Icons.visibility :Icons.visibility_off,
                suffixFunction: (){
                  cubit.changeObscureText();
                },
                validateFunction: (value) {
                  if (value!.isEmpty) {
                    return 'Password is empty';
                  }
                  return null;
                }
            ),
          ],
        );
      },
    );
  }
}
