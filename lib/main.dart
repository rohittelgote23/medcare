import 'package:flutter/material.dart';
// import 'package:medcare/homescreen.dart';
import 'package:medcare/screens/SignInPage/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedCare',
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
