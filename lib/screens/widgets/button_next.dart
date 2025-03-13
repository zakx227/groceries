import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF53B157)),
          child: Image.asset(
            'assets/images/Vector.png',
            width: 10,
            height: 18,
          )),
    );
  }
}
