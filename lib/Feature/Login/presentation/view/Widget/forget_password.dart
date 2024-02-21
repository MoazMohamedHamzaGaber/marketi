import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: GestureDetector(
        onTap: (){},
        child: Text(
          'Forgot Password?',
          style: AppStyles.styleMedium12.copyWith(
            color: const Color(0xFF3F80FF),
          ),
        ),
      ),
    );
  }
}
