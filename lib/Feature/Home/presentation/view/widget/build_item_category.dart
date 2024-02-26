import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marketi/Feature/Home/data/model/category_model.dart';

import '../../../../../core/utils/app_styles.dart';

class BuildItemCategory extends StatelessWidget {
  const BuildItemCategory({super.key, required this.model});

  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            model.function;
          },
          child: Container(
            width: 105,
            height: 96,
            decoration: ShapeDecoration(
              // image: DecorationImage(
              //   image: NetworkImage(model.image),
              //   fit: BoxFit.contain,
              // ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0xB2B2CCFF),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x0A3F80FF),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: CachedNetworkImage(
              imageUrl: model.image,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Center(child: Icon(Icons.error_outline)),
            ),
          ),
        ),
         Text(
          model.name,
          textAlign: TextAlign.center,
          style: AppStyles.styleMedium16,
        ),
      ],
    );
  }
}
