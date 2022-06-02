import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0a0d22),
        ),
        scaffoldBackgroundColor: const Color(0xFF0a0d22),
      ),
      initialRoute: InputPage.id,
      routes: {
        InputPage.id: (context) => InputPage(),
        ResultPage.id: (context) => ResultPage(),
      },
    );
  }
}
