import 'package:flutter/material.dart';

class CardOne extends StatelessWidget {
  final Color color;
  final String assetName;
  final String title;

  const CardOne({
    super.key,
    required this.color,
    required this.assetName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 105,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              assetName,
              width: 70,
              height: 70,
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
