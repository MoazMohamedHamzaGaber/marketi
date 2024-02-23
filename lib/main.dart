import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/Login/presentation/manage/cubit/login_cubit.dart';
import 'package:marketi/Feature/OnBoarding/presentation/view/on_boarding_view.dart';
import 'package:marketi/Feature/OnBoarding/presentation/manage/cubit/on_boarding_cubit.dart';
import 'package:marketi/Feature/Register/feature/manage/cubit/register_cubit.dart';
import 'package:marketi/core/utils/api_service.dart';

void main() {
  ApiService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=>OnBoardingCubit(),),
        BlocProvider(create: (BuildContext context)=>LoginCubit(),),
        BlocProvider(create: (BuildContext context)=>RegisterCubit(),),
      ],
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Marketi',
        home: OnBoardingView(),
      ),
    );
  }
}
