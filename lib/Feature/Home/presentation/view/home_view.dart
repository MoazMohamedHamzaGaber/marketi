import 'package:flutter/material.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/home_app_bar.dart';
import 'package:marketi/Feature/Home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: const HomeViewBody(),
    );
  }
}
