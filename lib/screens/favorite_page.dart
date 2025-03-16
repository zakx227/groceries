import 'package:flutter/material.dart';
import 'package:groceries/models/model_product.dart';
import 'package:groceries/screens/widgets/button.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final List<ModelProduct> items = [
    ModelProduct(
        'assets/images/jus.png', 'Organic Bananas', '7pcs, Priceg', 4.99),
    ModelProduct('assets/images/jus.png', 'Red Apple', '7pcs, Priceg', 4.99),
    ModelProduct('assets/images/jus.png', 'Beef bon', '7pcs, Priceg', 4.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Text(''),
        title: Text(
          'Favorurite',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return ListTile(
              leading: Image.asset(
                item.assetName,
                width: 30,
                height: 54,
              ),
              title: Text(item.title.toString()),
              subtitle: Text(item.sousTitle.toString()),
              trailing: Icon(Icons.arrow_forward_ios));
        },
      ),
      floatingActionButton: Button(onPressed: () {}, title: 'Add All To Cart'),
    );
  }
}
