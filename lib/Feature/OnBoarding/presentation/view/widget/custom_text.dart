import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.onBoardingModel});

  final onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          onBoardingModel.title,
          textAlign: TextAlign.center,
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(
          height: 34,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 29,
          ),
          child: Text(
            onBoardingModel.body,
            textAlign: TextAlign.center,
            style: AppStyles.styleMedium16,
          ),
        )
      ],
    );
  }
}
