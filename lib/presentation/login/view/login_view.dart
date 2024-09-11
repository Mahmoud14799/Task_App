import 'package:flutter/material.dart';
import 'package:task_app/presentation/login/view/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff8c5cb3),
      body: SafeArea(child: LoginViewBody()),
    );
  }
}
