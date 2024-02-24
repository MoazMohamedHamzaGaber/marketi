import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manage/cubit/Layout_cubit.dart';
import '../../manage/cubit/Layout_states.dart';
import 'bottom_nav_bar.dart';

class LayoutViewBody extends StatelessWidget {
  const LayoutViewBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=LayoutCubit().get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
