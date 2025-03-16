import 'package:flutter/material.dart';
import 'package:groceries/models/model_product.dart';
import 'package:groceries/screens/product_detail_page.dart';
import 'package:groceries/screens/widgets/card_one.dart';
import 'package:groceries/screens/widgets/card_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ModelProduct> items = [
    ModelProduct('assets/images/pngfuel 3 (1).png', 'Organic Bananas',
        '7pcs, Priceg', 4.99),
    ModelProduct('assets/images/pomme.png', 'Red Apple', '7pcs, Priceg', 4.99),
    ModelProduct(
        'assets/images/pngfuel 5 (1).png', 'Beef bon', '7pcs, Priceg', 4.99),
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
            padding: const EdgeInsets.only(left: 30),
            child: Image.asset(
              'assets/images/Group.png',
              width: 47,
              height: 55,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Exclude.png',
                width: 15,
                height: 18,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Dhaka, Banassre',
                style: TextStyle(fontSize: 22),
              )
            ],
          ),
          SizedBox(
            height: 30,
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
            height: 20,
          ),
          SizedBox(
            width: 361,
            height: 114,
            child: Image.asset('assets/images/banner.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exclusive Offer',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Color(0xFF53B175), fontSize: 20),
                ),
              ],
            ),
          ),
          CardScroll(items: items),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Color(0xFF53B175), fontSize: 20),
                ),
              ],
            ),
          ),
          CardScroll(items: items),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Groceries',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Color(0xFF53B175), fontSize: 20),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 10,
                children: [
                  CardOne(
                      color: Color.fromARGB(71, 248, 165, 76),
                      assetName: 'assets/images/pulses.png',
                      title: 'Pulses'),
                  CardOne(
                      color: Color.fromARGB(106, 83, 177, 117),
                      assetName: 'assets/images/pulses.png',
                      title: 'Pulses'),
                ],
              ),
            ),
          ),
          CardScroll(items: items),
        ],
      ),
    ));
  }
}

class CardScroll extends StatelessWidget {
  const CardScroll({
    super.key,
    required this.items,
  });

  final List<ModelProduct> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 248.51,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: GestureDetector(
                onDoubleTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailPage(product: items[index])));
                },
                child: CardProduct(product: items[index])),
          );
        },
      ),
    );
  }
}
