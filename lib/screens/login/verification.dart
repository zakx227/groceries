import 'package:flutter/material.dart';
import 'package:groceries/screens/widgets/button_next.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

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
            'Enter your 4-digital code',
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Code'),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: '- - - -'),
          ),
          SizedBox(
            height: 200,
          ),
          Text(
            'Resend Code',
            style: TextStyle(color: Color(0xFF53B175)),
          ),
        ],
      ),
      floatingActionButton: ButtonNext(onPressed: () {
        Navigator.pushReplacementNamed(context, '/location');
      }),
    );
  }
}
