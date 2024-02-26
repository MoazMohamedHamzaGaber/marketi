import 'package:flutter/material.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/custom_title.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/list_view_popular_product.dart';

class SectionPopularProduct extends StatelessWidget {
  const SectionPopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitleHome(title: 'Popular Product', function: (){}),
        const SizedBox(
          height: 8,
        ),
        const ListViewPopularProduct(),
      ],
    );
  }
}
