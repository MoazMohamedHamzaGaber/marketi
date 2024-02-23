import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/Home/presentation/view/home_view.dart';
import 'package:marketi/Feature/Login/presentation/manage/cubit/login_cubit.dart';
import 'package:marketi/Feature/Login/presentation/view/login_view.dart';
import 'package:marketi/Feature/OnBoarding/presentation/view/on_boarding_view.dart';
import 'package:marketi/Feature/OnBoarding/presentation/manage/cubit/on_boarding_cubit.dart';
import 'package:marketi/Feature/Register/feature/manage/cubit/register_cubit.dart';
import 'package:marketi/core/utils/api_service.dart';
import 'package:marketi/core/utils/shared_preference.dart';

import 'core/utils/constant.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiService.init();
 await SharedPreference.init();

 bool? onBoarding= SharedPreference.getDate(key: 'onBoarding');
 uid=SharedPreference.getDate(key: 'uid');
 print(uid);

 Widget? widget;
 if(onBoarding !=null){
   if(uid !=null){
     widget=const HomeView();
   }else{
     widget=const LoginView();
   }
 }else{
   widget =const OnBoardingView();
 }

  runApp( MyApp(startWidget: widget,));
}

class MyApp extends StatelessWidget {
  MyApp({super.key,required this.startWidget});

  Widget? startWidget;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=>OnBoardingCubit(),),
        BlocProvider(create: (BuildContext context)=>LoginCubit(),),
        BlocProvider(create: (BuildContext context)=>RegisterCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Marketi',
        home: startWidget,
      ),
    );
  }
}
