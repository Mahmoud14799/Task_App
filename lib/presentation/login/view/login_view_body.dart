import 'package:flutter/material.dart';
import 'package:task_app/core/utils/sign_in_with_email_password.dart';
import 'package:task_app/presentation/home/view/home_view.dart';
import 'package:task_app/presentation/login/view/widget/custom_Button_google.dart';
import 'package:task_app/core/Widget/custom_button.dart';
import 'package:task_app/core/Widget/custom_text_fild.dart';
import 'package:task_app/presentation/register/view/register_view.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late String email;
  late String password;
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
          CustomTextField(
            hintText: ' Email',
            onChanged: (getEmail) {
              email = getEmail;
            },
          ),
          const SizedBox(height: 40),
          CustomTextField(
            hintText: 'Password',
            onChanged: (getPassword) {
              password = getPassword;
            },
          ),
          const SizedBox(
            height: 70,
          ),
          CustomButton(
            textButton: "Log in",
            onPressed: () {
              if (email.isNotEmpty || password.isNotEmpty) {
                signInWithEmailAndPassword(email, password);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomeView();
                }));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Welcome How are you')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('emil or password is empty')),
                );
              }
            },
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
