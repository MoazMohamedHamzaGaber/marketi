import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/Login/presentation/view/login_view.dart';
import 'package:marketi/Feature/Register/feature/manage/cubit/register_cubit.dart';
import 'package:marketi/Feature/Register/feature/manage/cubit/register_states.dart';
import 'package:marketi/Feature/Register/feature/view/widget/custom_botton_register.dart';
import 'package:marketi/Feature/Register/feature/view/widget/custom_image.dart';
import 'package:marketi/Feature/Register/feature/view/widget/section_text_field.dart';
import 'package:marketi/core/utils/app_assets.dart';
import 'package:marketi/core/utils/components.dart';
import 'package:marketi/core/utils/constant.dart';
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
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (BuildContext context, state) {
          if(state is RegisterErrorStates)
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
          if(state is RegisterSuccessStates)
          {
            navigateTo(context, const LoginView());
          }
        },
        builder: (BuildContext context, Object? state) {
          var cubit = RegisterCubit().get(context);
          return Form(
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
                   CustomBottomRegister(
                    emailController: emailController,
                    passwordController: passwordController,
                    confirmPasswordController: confirmPasswordController,
                    nameController: nameController,
                     cubit: cubit,
                     formKey: formKey,
                  ),
                  const CustomOrContinueWith(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
