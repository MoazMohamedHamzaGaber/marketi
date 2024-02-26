import 'package:flutter/material.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/custom_grid_view.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/custom_title.dart';

class SectionCategory extends StatelessWidget {
  const SectionCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitleHome(title: 'Category', function: (){}),
        const SizedBox(
          height: 8,
        ),
        const CustomGridView(),
      ],
    );
  }
}
