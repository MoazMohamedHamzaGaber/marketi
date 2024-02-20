import 'package:flutter/material.dart';

import 'app_styles.dart';

Widget buildContainer({
  required String text,
 required Function function,
})=>GestureDetector(
  onTap: (){
    function();
  },
  child: Container(
    height: 48,
    padding: const EdgeInsets.all(14),
    margin: const EdgeInsets.symmetric(
      horizontal: 14,
    ),
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