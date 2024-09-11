import 'package:flutter/material.dart';
import 'package:task_app/presentation/register/view/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: RegisterViewBody(),
    );
  }
}
