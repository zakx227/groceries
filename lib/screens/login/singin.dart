import 'package:flutter/material.dart';
import 'package:groceries/screens/login/number.dart';
import 'package:groceries/screens/widgets/buttonimg.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset('assets/images/601 1.png'),
        Padding(
          padding: const EdgeInsets.only(right: 130),
          child: Text(
            'Get your groceris\nwith nectar',
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Number()));
            },
            child: AbsorbPointer(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Row(
                    children: [
                      Image.asset(
                        'assets/images/Rectangle 11.png',
                        width: 33,
                        height: 23,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '+880',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Or connect with social media'),
            SizedBox(
              height: 20,
            ),
            ButtonImg(
                title: 'Continue with Google',
                assetName: 'assets/images/Group 6795.png',
                color: Color(0xFF5383EC)),
            SizedBox(
              height: 20,
            ),
            ButtonImg(
                title: 'Continue with Facebook',
                assetName: 'assets/images/Vector (1).png',
                color: Color(0xFF4A66AC))
          ],
        )
      ]),
    );
  }
}
