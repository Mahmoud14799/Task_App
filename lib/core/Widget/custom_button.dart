import 'package:flutter/material.dart';
import 'package:task_app/presentation/home/view/home_view.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textButton,
  });
  final String textButton;
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
        child: Text(
          textButton,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
