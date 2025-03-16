import 'package:flutter/material.dart';
import 'package:groceries/models/model_product.dart';
import 'package:groceries/screens/widgets/card_cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<ModelProduct> items = [
    ModelProduct('assets/images/pngfuel 3 (1).png', 'Organic Bananas',
        '7pcs, Priceg', 4.99),
    ModelProduct('assets/images/pomme.png', 'Red Apple', '7pcs, Priceg', 4.99),
    ModelProduct(
        'assets/images/pngfuel 5 (1).png', 'Beef bon', '7pcs, Priceg', 4.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        elevation: 8,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CardCart(product: items[index]);
          },
        ),
      ),
    );
  }
}
