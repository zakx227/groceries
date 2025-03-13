import 'package:flutter/material.dart';
import 'package:groceries/screens/home.dart';
import 'package:groceries/screens/login/login.dart';
import 'package:groceries/screens/login/number.dart';
import 'package:groceries/screens/login/select_location.dart';
import 'package:groceries/screens/login/singin.dart';
import 'package:groceries/screens/login/singup.dart';
import 'package:groceries/screens/login/verification.dart';
import 'package:groceries/screens/onbording.dart';
import 'package:groceries/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mon App',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/onbording': (context) => const Onbording(),
        '/singin': (context) => const SingIn(),
        '/number': (context) => const Number(),
        '/verification': (context) => const Verification(),
        '/location': (context) => const SelectLocation(),
        '/login': (context) => const Login(),
        '/singup': (context) => const SingUp(),
        '/home': (context) => const Home(),
      },
    );
  }
}
