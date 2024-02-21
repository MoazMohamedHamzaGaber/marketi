import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomButtonRegister extends StatelessWidget {
  const CustomButtonRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Are you new in Marketi ',
          style: AppStyles.styleRegular12.copyWith(
            color: const Color(0xFF51526B),
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Text(
            'register?',
            style: AppStyles.styleRegular12.copyWith(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
