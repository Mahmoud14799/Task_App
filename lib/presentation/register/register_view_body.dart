import 'package:flutter/material.dart';
import 'package:task_app/presentation/login/view/widget/custom_Button_google.dart';
import 'package:task_app/core/Widget/custom_button.dart';
import 'package:task_app/core/Widget/custom_text_fild.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Register in to Shh!',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        SizedBox(height: 120),
        CustomTextField(hintText: 'Username or Email'),
        SizedBox(height: 40),
        CustomTextField(hintText: 'Password'),
        SizedBox(
          height: 70,
        ),
        CustomButton(
          textButton: 'Register',
        ),
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
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w800),
          ),
        ),
      ],
    );
  }
}
