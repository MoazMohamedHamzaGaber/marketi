import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../../../core/utils/app_styles.dart';

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'password is required'),
  MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character'),
]);

class PasswordValidator extends StatelessWidget {
  const PasswordValidator({super.key, this.cubit, required this.controller});

  final TextEditingController controller;
  final cubit;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Color(0xFF919AAB),
        fontSize: 16,
      ),
      validator: passwordValidator,
      cursorHeight: 20,
      controller: controller,
      obscureText: cubit.obscureText,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xB2B2CCFF),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xB2B2CCFF),
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 2,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Color(0xB2B2CCFF),
            ),
          ),
          prefixIcon: const Icon(
            Icons.lock_outline,
            size: 16,
            color: Color(0xff001640),
          ),
          suffixIcon: IconButton(
            onPressed: (){
              cubit.changeObscureText();
            },
            icon: Icon(
                cubit.obscureText? Icons.visibility :Icons.visibility_off,
              size: 16,
              color: const Color(0xff001640),),
          ),
          hintText: '**************',
          hintStyle: AppStyles.styleRegular12
              .copyWith(color: const Color(0xFF919AAB))),
    );
  }
}
