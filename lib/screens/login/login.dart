import 'package:flutter/material.dart';
import 'package:groceries/screens/widgets/button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 160),
              child: Image.asset(
                'assets/images/Group.png',
                width: 47,
                height: 55,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Loging',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Enter your emails and password'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            labelText: 'Email', hintText: 'test@gmail.com'),
                        validator: (value) {
                          if (value == null || value.contains('@')) {
                            return 'Email invalid';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                            suffixIcon: Image.asset(
                              'assets/images/Vector2.png',
                              width: 1,
                              height: 15,
                            ),
                            labelText: 'Password',
                            hintText: '..........'),
                        validator: (value) {
                          if (value == null || value.length < 6) {
                            return '6 caractères minimum';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Button(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  title: 'Log In'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account ?'),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/singup');
                    },
                    child: Text(
                      'Sinup',
                      style: TextStyle(color: Color(0xFF53B175)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
