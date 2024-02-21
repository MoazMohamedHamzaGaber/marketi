import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomOrContinueWith extends StatelessWidget {
  const CustomOrContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Or Continue With',
          style: AppStyles.styleRegular12,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.imagesGoogleIcon,
            ),
            const SizedBox(
              width: 16,
            ),
            SvgPicture.asset(
              AppAssets.imagesAppleIcon,
            ),
            const SizedBox(
              width: 16,
            ),
            SvgPicture.asset(
              AppAssets.imagesFacebokIcon,
            ),
          ],
        )
      ],
    );
  }
}
