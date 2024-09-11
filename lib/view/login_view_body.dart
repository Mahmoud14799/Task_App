import 'package:flutter/material.dart';
import 'package:task_app/view/widget/custom_Button.dart';
import 'package:task_app/view/widget/custom_button_login.dart';
import 'package:task_app/view/widget/custom_text_fild.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: const [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Log in to Shh!',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 120),
          CustomTextField(hintText: 'Username or Email'),
          SizedBox(height: 40),
          CustomTextField(hintText: 'Password'),
          SizedBox(
            height: 70,
          ),
          CustomButtonLogin(),
          SizedBox(
            height: 30,
          ),
          CustomButtonGoogle(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Dont have an accaount ?',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Sign up',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}
