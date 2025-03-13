import 'package:flutter/material.dart';
import 'package:groceries/screens/widgets/button.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/8140 1.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 320,
                ),
                Image.asset(
                  'assets/images/pngfuel5.png',
                  width: 48,
                  height: 56,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 120),
                  child: Text(
                    'Welcome to our store',
                    style: TextStyle(
                      fontSize: 29,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: TextStyle(fontSize: 15, color: Color(0xFFFCFCFC)),
                ),
                SizedBox(
                  height: 30,
                ),
                Button(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/singin');
                  },
                  title: 'Get Started',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
