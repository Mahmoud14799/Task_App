import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_app/core/utils/register_with_email_password.dart';
import 'package:task_app/presentation/login/view/widget/custom_Button_google.dart';
import 'package:task_app/core/Widget/custom_button.dart';
import 'package:task_app/core/Widget/custom_text_fild.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  String email = '';

  String password = '';

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
              'Register in to Shh!',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 120),
          CustomTextField(
            hintText: 'Username or Email',
            onChanged: (getEmail) {
              setState(() {
                email = getEmail;
              });
            },
          ),
          const SizedBox(height: 40),
          CustomTextField(
            hintText: 'Password',
            onChanged: (getPassword) {
              setState(() {
                password = getPassword;
              });
            },
          ),
          const SizedBox(
            height: 70,
          ),
          CustomButton(
            onPressed: () {
              if (email.isNotEmpty || password.isNotEmpty) {
                registerWithEmailAndPassword(email, password);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('emil or password is empty')),
                );
              }

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('User registered successfully')),
              );

              print('$email, $password');
            },
            textButton: 'Register',
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'i have an accaount ?',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Text(
                'Sign in',
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
