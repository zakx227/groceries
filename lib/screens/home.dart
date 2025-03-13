import 'package:flutter/material.dart';
import 'package:groceries/screens/account_page.dart';
import 'package:groceries/screens/cart_page.dart';
import 'package:groceries/screens/explore_page.dart';
import 'package:groceries/screens/favorite_page.dart';
import 'package:groceries/screens/home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageList = [
    HomePage(),
    ExplorePage(),
    CartPage(),
    FavoritePage(),
    AccountPage()
  ];

  int pageIndex = 0;
  bool selection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.transparent,
          selectedIndex: pageIndex,
          onDestinationSelected: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(
                icon: Icon(
                  Icons.store,
                  color: pageIndex == 0 ? Color(0xFF53B157) : Colors.black,
                ),
                label: 'Shop'),
            NavigationDestination(
                icon: Icon(
                  Icons.manage_search,
                  color: pageIndex == 1 ? Color(0xFF53B157) : Colors.black,
                ),
                label: 'Explore'),
            NavigationDestination(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: pageIndex == 2 ? Color(0xFF53B157) : Colors.black,
                ),
                label: 'Cart'),
            NavigationDestination(
                icon: Icon(
                  Icons.favorite,
                  color: pageIndex == 3 ? Color(0xFF53B157) : Colors.black,
                ),
                label: 'Favourite'),
            NavigationDestination(
                icon: Icon(
                  Icons.person,
                  color: pageIndex == 4 ? Color(0xFF53B157) : Colors.black,
                ),
                label: 'Account'),
          ]),
    );
  }
}
