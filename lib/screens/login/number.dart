import 'package:flutter/material.dart';

import '../widgets/button_next.dart';

class Number extends StatelessWidget {
  const Number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Enter your mobile number',
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Mobile Number'),
          TextFormField(
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      floatingActionButton: ButtonNext(onPressed: () {
        Navigator.pushReplacementNamed(context, '/verification');
      }),
    );
  }
}
