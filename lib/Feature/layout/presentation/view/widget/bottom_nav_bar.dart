import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manage/cubit/Layout_cubit.dart';
import '../../manage/cubit/Layout_states.dart';

class BottomNavBar extends StatefulWidget {
   const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit,LayoutStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        var cubit=LayoutCubit().get(context);
        return BottomNavigationBar(
          currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeCurrentIndex(index);
            },
            selectedItemColor: const Color(0xff3F80FF),
            unselectedItemColor: const Color(0xff67687E),
            showUnselectedLabels: true,
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: const IconThemeData(size: 35),
            items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ]);
      },
    );
  }
}
