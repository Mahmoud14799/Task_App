import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_app/core/utils/constans.dart';
import 'package:task_app/core/utils/sign_in_with_google.dart';
import 'package:task_app/presentation/home/view/home_view.dart';

class CustomButtonGoogle extends StatelessWidget {
  const CustomButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 306,
      child: ElevatedButton(
        onPressed: () async {
          User? user = await signInWithGoogle();
          if (user != null) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomeView();
            }));

            SnackBar(content: Text('Welcome ${user.displayName}'));
          }
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, minimumSize: const Size(305, 56)),
        child: Row(
          children: [
            Image.asset(
              googleIcon,
              scale: 1,
            ),
            const SizedBox(
              width: 50,
            ),
            const Text(
              'Log in with Google',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
