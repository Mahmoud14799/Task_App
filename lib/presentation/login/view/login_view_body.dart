import 'package:flutter/material.dart';
import 'package:task_app/presentation/login/view/widget/custom_Button_google.dart';
import 'package:task_app/core/Widget/custom_button.dart';
import 'package:task_app/core/Widget/custom_text_fild.dart';
import 'package:task_app/presentation/register/register_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Log in to Shh!',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 120),
          const CustomTextField(hintText: 'Username or Email'),
          const SizedBox(height: 40),
          const CustomTextField(hintText: 'Password'),
          const SizedBox(
            height: 70,
          ),
          const CustomButton(
            textButton: "Log in",
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomButtonGoogle(),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Dont have an accaount ?',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterView()));
              },
              child: const Text(
                'Register',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
