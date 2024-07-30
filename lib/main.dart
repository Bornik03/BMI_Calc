import 'package:flutter/material.dart';
import 'inputpage.dart';
void main()=>runApp(BMI());
class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E30),
      ),
      home: InputPage(),
    );
  }
}
