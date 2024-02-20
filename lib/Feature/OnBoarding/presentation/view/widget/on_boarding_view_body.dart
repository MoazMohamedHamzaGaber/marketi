import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/OnBoarding/data/list/on_boarding_list.dart';
import 'package:marketi/Feature/OnBoarding/presentation/manage/cubit/on_boarding_states.dart';
import 'package:marketi/Feature/OnBoarding/presentation/view/widget/build_item_page_view.dart';

import '../../manage/cubit/on_boarding_cubit.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingCubit,OnBoardingStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=OnBoardingCubit().get(context);
        return PageView.builder(
          controller: pageController,
          onPageChanged: (index){
            if (index == model.length - 1) {
              cubit.isLast = true;
            } else {
              cubit.isLast = false;
            }
          },
          itemBuilder: (context, index) => BuildItemPageView(
            onBoardingModel: model[index],
            pageController: pageController, cubit: cubit,
          ),
          itemCount: model.length,
        );
      },
    );
  }
}
