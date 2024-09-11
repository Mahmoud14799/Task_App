import 'package:flutter/material.dart';
import 'package:task_app/presentation/home/view/home_view.dart';

class CustomButtonLogin extends StatelessWidget {
  const CustomButtonLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 306,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const HomeView();
          }));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, minimumSize: const Size(305, 56)),
        child: const Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
