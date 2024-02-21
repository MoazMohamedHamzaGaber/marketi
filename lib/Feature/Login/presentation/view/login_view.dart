import 'package:flutter/material.dart';
import 'package:marketi/Feature/Login/presentation/view/Widget/login_view_body.dart';

import '../../../../core/utils/components.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const LoginViewBody(),
    );
  }
}
