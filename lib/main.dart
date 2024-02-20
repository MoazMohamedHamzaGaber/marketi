import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/Feature/OnBoarding/presentation/manage/cubit/on_boarding_cubit.dart';
import 'package:marketi/Feature/OnBoarding/presentation/view/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=>OnBoardingCubit(),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Marketi',
        home: OnBoardingView(),
      ),
    );
  }
}
