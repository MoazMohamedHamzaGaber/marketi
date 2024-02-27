import 'package:flutter/material.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/custom_text_field.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/section_brands.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/section_category.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/section_popular_product.dart';
import 'package:marketi/core/utils/app_assets.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CustomSearchTextField(searchController: searchController)),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 14,
            ),
          ),
          SliverToBoxAdapter(
            child: Image.asset(
              AppAssets.imagesOffer1,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 14,
            ),
          ),
          const SliverToBoxAdapter(child: SectionPopularProduct()),
          const SliverToBoxAdapter(child: SectionCategory()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 14,
            ),
          ),
          const SliverToBoxAdapter(child: SectionBrands()),
        ],
      ),
    );
  }
}
