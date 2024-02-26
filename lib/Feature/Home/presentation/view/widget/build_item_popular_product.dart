import 'package:flutter/material.dart';
import 'package:marketi/core/utils/app_assets.dart';
import 'package:marketi/core/utils/app_styles.dart';

class CustomItemPopularProduct extends StatelessWidget {
  const CustomItemPopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 144,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 10,
        shadowColor: const Color(0xB2B2CCFF),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 152,
                    height: 96,
                    margin: const EdgeInsets.only(
                      left: 4,
                      right: 4,
                      top: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9E6FF),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Center(
                      child: Image.asset(AppAssets.imagesSmartWatch,
                        height: 90,
                        width: 90,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                      right: 4,
                      top: 4,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: const BoxDecoration(
                              color: Color(0xffB2CCFF),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(5),
                              )
                          ),
                          child: Text(
                            '15% OFF',
                            textAlign: TextAlign.center,
                            style: AppStyles.styleMedium12.copyWith(color: const Color(0xFF3F80FF),),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 24,
                          height: 24,
                          margin: const EdgeInsets.all(4),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          child: const Icon(Icons.favorite_border,size: 18,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '499 LE',
                          style: AppStyles.styleMedium12,
                        ),
                        Spacer(),
                        Icon(
                          Icons.star_border,
                          size: 18,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '4.9',
                          style: AppStyles.styleMedium12,
                        ),
                      ],
                    ),
                    Text(
                      'Smart Watch',
                      style: AppStyles.styleMedium12,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
