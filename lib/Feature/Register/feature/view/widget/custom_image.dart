import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 14,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xB2B2CCFF)),
          ),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              }, icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        const SizedBox(
          width: 28,
        ),
        Image.asset(AppAssets.imagesLogoLogIn,
          width: size.width *0.42,
          height: size.height *0.18,
        ),
      ],
    );
  }
}
