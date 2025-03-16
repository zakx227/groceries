import 'package:flutter/material.dart';
import 'package:groceries/models/model_card_two.dart';

class CardTwo extends StatelessWidget {
  final ModelCardTwo card;

  const CardTwo({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      height: 189,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 211, 207, 207)),
          color: card.color,
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            card.assetName,
            width: 111,
            height: 74,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              card.title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
