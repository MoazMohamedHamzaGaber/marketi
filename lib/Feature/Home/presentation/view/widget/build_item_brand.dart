import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marketi/Feature/Home/data/model/brand_model.dart';

class BuildItemBrands extends StatelessWidget {
  const BuildItemBrands({super.key, required this.model});

  final BrandsModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        model.function;
      },
      child: Container(
        width: 105,
        height: 100,
        decoration: ShapeDecoration(
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
        child: Center(
          child: CachedNetworkImage(
            imageUrl: model.image,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Center(child: Icon(Icons.error_outline)),
          ),
        ),
      ),
    );
  }
}
