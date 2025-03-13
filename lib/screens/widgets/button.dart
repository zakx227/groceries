import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function()? onPressed;
  final String title;

  const Button({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 353,
        height: 67,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Color(0xFF53B175)),
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ));
  }
}
