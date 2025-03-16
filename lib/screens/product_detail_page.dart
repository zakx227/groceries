import 'package:flutter/material.dart';
import 'package:groceries/models/model_product.dart';
import 'package:groceries/screens/widgets/button.dart';
import 'package:groceries/screens/widgets/button_remove_add.dart';

class ProductDetailPage extends StatefulWidget {
  final ModelProduct product;

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            Container(
              width: 413,
              height: 300,
              decoration: BoxDecoration(
                  color: Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Image.asset(
                widget.product.assetName,
                width: 329,
                height: 199,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        widget.product.title.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(widget.product.sousTitle)
                    ],
                  ),
                  Icon(Icons.favorite_border)
                ],
              ),
            ),
            Row(
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
                SizedBox(
                  width: 200,
                ),
                Text(
                  '\$' + widget.product.price.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            ListTile(
              title: Text(
                'Product Detail',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                  'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.'),
              trailing: Icon(Icons.arrow_downward),
            ),
            ListTile(
              title: Text(
                'Nutritions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text(
                'Review',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Button(onPressed: () {}, title: 'Add To Basket')
          ],
        ));
  }
}
