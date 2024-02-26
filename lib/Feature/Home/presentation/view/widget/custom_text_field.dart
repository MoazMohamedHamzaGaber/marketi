import 'package:flutter/material.dart';
import 'package:marketi/core/utils/app_assets.dart';
import 'package:marketi/core/utils/app_styles.dart';


class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.searchController});

  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Color(0xB2B2CCFF),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Image.asset(AppAssets.imagesSearchIconsUIA),
          const SizedBox(
            width: 20,
          ),
          Text(
            'What are you looking for ? ',
            style: AppStyles.styleRegular16.copyWith(color: const Color(0xFF919AAB),),
          ),
          const Spacer(),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0xB2B2CCFF),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Icon(Icons.ac_unit),
          )
        ],
      ),
    );
    // return buildTextField(
    //   textInputType: TextInputType.text,
    //   prefixIcon: Icons.search_outlined,
    //   text: 'What are you looking for ?',
    //   controller: searchController,
    //   validateFunction: (value) {},
    //   suffixIcon: Icons.ac_unit,
    //   suffixFunction: (){},
    // );
  }
}
