import 'package:flutter/material.dart';

import 'app_styles.dart';

Widget buildContainer({
  required String text,
  required Function function,
}) =>
    GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        height: 48,
        padding: const EdgeInsets.all(14),
        decoration: ShapeDecoration(
          color: const Color(0xFF3F80FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleMedium18.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );

PreferredSizeWidget buildAppBar() => AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xB2B2CCFF)),
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: Center(
              child: Text(
                'Skip',
                style: AppStyles.styleSemiBold16
                    .copyWith(color: const Color(0xFF3F80FF)),
              ),
            ),
          ),
        ],
      ),
    );

Widget buildTextField({
  required TextInputType textInputType,
  required IconData prefixIcon,
  IconData? suffixIcon,
  required String text,
  required String validateText,
  bool obscureText = false,
  required TextEditingController controller,
   Function? suffixFunction,
}) =>
    TextFormField(
      style: const TextStyle(
        color: Color(0xFF919AAB),
        fontSize: 16,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return validateText;
        }
        return null;
      },
      cursorHeight: 20,
      controller: controller,
      obscureText: obscureText,
      keyboardType: textInputType,
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
          prefixIcon: Icon(
            prefixIcon,
            size: 16,
            color: const Color(0xff001640),
          ),
          suffixIcon: IconButton(
            onPressed: (){
              suffixFunction!();
              },
            icon: Icon(
            suffixIcon,
            size: 16,
            color: const Color(0xff001640),),
          ),
          hintText: text,
          hintStyle: AppStyles.styleRegular12
              .copyWith(color: const Color(0xFF919AAB))),
    );
