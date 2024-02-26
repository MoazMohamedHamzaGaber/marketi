import 'package:flutter/material.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/build_item_popular_product.dart';

class ListViewPopularProduct extends StatelessWidget {
  const ListViewPopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>const CustomItemPopularProduct(),
        separatorBuilder: (context,index)=>const SizedBox(
          width: 10,
        ),
        itemCount: 10,
      ),
    );
  }
}
