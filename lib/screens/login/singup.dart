import 'package:flutter/material.dart';
import 'package:groceries/screens/widgets/button.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 160),
            child: Image.asset(
              'assets/images/Group.png',
              width: 47,
              height: 55,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Enter your credentials to continue'),
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
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
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
                    Text(
                        'By continuing you agree to our Terms of Service\nand Privacy Policy.'),
                    SizedBox(
                      height: 20,
                    ),
                    Button(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        title: 'Sing Up'),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Already have an account? Singup')
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
