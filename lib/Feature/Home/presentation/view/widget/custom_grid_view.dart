import 'package:flutter/material.dart';
import 'package:marketi/Feature/Home/data/list/category_list.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/build_item_category.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
       shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index)=> BuildItemCategory(model: categoryModel[index]),
      itemCount: categoryModel.length,
    );
  }
}
