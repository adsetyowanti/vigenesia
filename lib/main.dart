import 'package:flutter/material.dart';
import 'package:new_vigenesia/constants.dart';
import 'package:new_vigenesia/ui/Welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Vigenesia',
      theme: ThemeData(scaffoldBackgroundColor: kWhiteColor),
      home: const WelcomePage(),
    );
  }
}
