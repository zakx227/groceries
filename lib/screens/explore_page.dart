import 'package:flutter/material.dart';
import 'package:groceries/models/model_card_two.dart';
import 'package:groceries/screens/widgets/card_two.dart';

class ExplorePage extends StatelessWidget {
  ExplorePage({super.key});

  final List<ModelCardTwo> cardList = [
    ModelCardTwo(
        assetName: 'assets/images/pngfuel 6.png',
        title: 'Frash Fruits & Vegetable',
        color: Color.fromARGB(60, 83, 177, 117)),
    ModelCardTwo(
      assetName: 'assets/images/pngfuel 6.png',
      title: 'Frash Fruits & Vegetable',
      color: Color.fromARGB(61, 248, 165, 76),
    ),
    ModelCardTwo(
        assetName: 'assets/images/pngfuel 6.png',
        title: 'Frash Fruits & Vegetable',
        color: Color.fromARGB(61, 247, 165, 147)),
    ModelCardTwo(
        assetName: 'assets/images/pngfuel 6.png',
        title: 'Frash Fruits & Vegetable',
        color: Color.fromARGB(62, 211, 176, 224)),
    ModelCardTwo(
        assetName: 'assets/images/pngfuel 6.png',
        title: 'Frash Fruits & Vegetable',
        color: Color.fromARGB(64, 253, 229, 152)),
    ModelCardTwo(
        assetName: 'assets/images/pngfuel 6.png',
        title: 'Frash Fruits & Vegetable',
        color: Color.fromARGB(61, 183, 223, 245)),
    ModelCardTwo(
        assetName: 'assets/images/pngfuel 6.png',
        title: 'Frash Fruits & Vegetable',
        color: Color.fromARGB(97, 83, 177, 117)),
    ModelCardTwo(
        assetName: 'assets/images/pngfuel 6.png',
        title: 'Frash Fruits & Vegetable',
        color: Color.fromARGB(97, 83, 177, 117)),
  ];

  @override
  Widget build(BuildContext context) {
    int i = 0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: Text(
                'Find Products',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 51,
                width: 364,
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 235, 228, 228),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: InputBorder.none),
                )),
            SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (i = 0; i < cardList.length; i++)
                  CardTwo(card: cardList[i]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
