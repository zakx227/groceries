import 'package:flutter/material.dart';
import 'package:groceries/models/model_product.dart';
import 'package:groceries/screens/widgets/button_remove_add.dart';

class CardCart extends StatefulWidget {
  final ModelProduct product;
  const CardCart({super.key, required this.product});

  @override
  State<CardCart> createState() => _CardCartState();
}

class _CardCartState extends State<CardCart> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 363,
      height: 96,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              widget.product.assetName,
              width: 70,
              height: 64,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(widget.product.sousTitle),
                Expanded(
                  child: Row(
                    children: [
                      ButtonRemoveAdd(
                        icon: Icons.remove,
                        onPressed: () {
                          if (number > 1) {
                            setState(() {
                              number--;
                            });
                          }
                        },
                      ),
                      Text(
                        number.toString().padLeft(2, '0'),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ButtonRemoveAdd(
                        icon: Icons.add,
                        onPressed: () {
                          setState(() {
                            number++;
                          });
                        },
                        color: Color(0xFF53B175),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                Text(
                  '\$' + widget.product.price.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
