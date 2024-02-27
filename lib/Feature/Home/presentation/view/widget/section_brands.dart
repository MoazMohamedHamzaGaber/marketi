import 'package:flutter/material.dart';

import 'custom_title.dart';
import 'list_view_brands.dart';

class SectionBrands extends StatelessWidget {
  const SectionBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitleHome(title: 'Brands', function: () {}),
        const SizedBox(
          height: 8,
        ),
        const ListViewBrands(),
      ],
    );
  }
}
