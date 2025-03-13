import 'package:flutter/material.dart';

class ButtonImg extends StatelessWidget {
  final String title;
  final String assetName;
  final Color color;

  const ButtonImg({
    super.key,
    required this.title,
    required this.assetName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 353,
        height: 67,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: color),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/singin');
          },
          child: Row(
            children: [
              Image.asset(
                assetName,
                width: 50,
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
