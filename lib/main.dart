import 'package:flutter/material.dart';
import 'package:saleapp/Home_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_screen(),
    );
  }
}

