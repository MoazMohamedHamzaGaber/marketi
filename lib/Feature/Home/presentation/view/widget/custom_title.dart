import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomTitleHome extends StatelessWidget {
  const CustomTitleHome({super.key, required this.title, required this.function});
  final String title;
 final Function function;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          title,
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            function();
          },
          child: Text(
            'View all',
            style: AppStyles.styleMedium16.copyWith(
              color: const Color(0xFF3F80FF),
            ),
          ),
        ),
      ],
    );
  }
}
