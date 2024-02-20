import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi/Feature/OnBoarding/data/model/on_boarding_model.dart';
import 'package:marketi/Feature/OnBoarding/presentation/view/widget/custom_text.dart';
import 'package:marketi/Feature/login.dart';
import 'package:marketi/core/utils/components.dart';
import '../../../../../core/utils/constant.dart';
import 'custom_smooth_indicator.dart';

class BuildItemPageView extends StatelessWidget {
   const BuildItemPageView({super.key, required this.onBoardingModel,required this.pageController,required this.cubit});

  final OnBoardingModel onBoardingModel;
  final pageController;
  final cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(onBoardingModel.image),
        const SizedBox(
          height: 42,
        ),
        CustomSmoothIndicator(pageController: pageController, cubit: cubit,),
        const SizedBox(
          height: 26,
        ),
        CustomText(onBoardingModel: onBoardingModel),
        const SizedBox(
          height: 34,
        ),
        buildContainer(
          text: 'Next',
          function: () {
            if (cubit.isLast) {
              navigateAndFinish(context, const login());
            }
            pageController.nextPage(
              duration: const Duration(
                milliseconds: 750,
              ),
              curve: Curves.fastLinearToSlowEaseIn,
            );
            // if (cubit.isLast) {
            //   SharedPreference.saveData(
            //     key: 'onBoarding',
            //     value: true,
            //   ).then((value) {
            //     if(value) {
            //       navigateAndFinish(context, const LoginView());
            //     }
            //   });
            // }
            // pageController.nextPage(
            //   duration: const Duration(
            //     milliseconds: 750,
            //   ),
            //   curve: Curves.fastLinearToSlowEaseIn,
            // );
          },
        ),
      ],
    );
  }
}