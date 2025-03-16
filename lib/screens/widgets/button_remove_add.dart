import 'package:flutter/material.dart';

class ButtonRemoveAdd extends StatelessWidget {
  final Color? color;
  final IconData icon;
  final Function()? onPressed;

  const ButtonRemoveAdd(
      {super.key, required this.icon, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 40,
        height: 32,
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: color,
            )),
      ),
    );
  }
}
