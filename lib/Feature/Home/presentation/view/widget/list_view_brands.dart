import 'package:flutter/material.dart';

import '../../../data/list/brand_list.dart';
import 'build_item_brand.dart';

class ListViewBrands extends StatelessWidget {
  const ListViewBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => BuildItemBrands(model: brandModel[index]),
        separatorBuilder: (context, index) => const SizedBox(
          width: 16,
        ),
        itemCount: brandModel.length,
      ),
    );
  }
}
