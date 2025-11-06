import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() {
  runApp(const BMRCalculator());
}

class BMRCalculator extends StatelessWidget {
  const BMRCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      home: const InputPage(),
    );
  }
}