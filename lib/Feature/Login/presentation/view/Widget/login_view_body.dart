import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/Login/presentation/manage/cubit/login_cubit.dart';
import 'package:marketi/Feature/Login/presentation/manage/cubit/login_states.dart';
import 'package:marketi/Feature/Login/presentation/view/Widget/custom_button_register.dart';
import 'package:marketi/Feature/Login/presentation/view/Widget/custom_text_field.dart';
import 'package:marketi/Feature/Login/presentation/view/Widget/forget_password.dart';
import 'package:marketi/Feature/layout/presentation/view/layout_view.dart';
import 'package:marketi/core/utils/app_assets.dart';
import 'package:marketi/core/utils/components.dart';
import 'package:marketi/core/utils/shared_preference.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/widget/custom_or_continue_with.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (BuildContext context, state) {
        if (state is LoginErrorStates)
        {
          buildShowDialog(
            context: context,
            image: AppAssets.imagesWarning,
            name: state.error,
            function: (){
              Navigator.pop(context);
            },
          );
        }
        if(state is LoginSuccessStates)
        {

          showToast(text: 'Login Successful');
           SharedPreference.saveData(key: 'uid', value: state.uId).then((value)
           {
             uid=state.uId;
            navigateAndFinish(context,  const LayoutView());
          }
          );
        }
      },
      builder: (BuildContext context, Object? state) {
        var size=MediaQuery.sizeOf(context);
        var cubit = LoginCubit().get(context);
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
                  Image.asset(
                    AppAssets.imagesLogoLogIn,
                   width: size.width *0.6,
                   height: size.height *0.25,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CustomTextField(
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
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
                        cubit.userLogin(
                          email: emailController.text,
                          password: passwordController.text,
                          context: context,
                        );
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
      },
    );
  }
}
