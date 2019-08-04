import 'package:flutter/material.dart';
import 'package:yatch_hire/pages/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yatch Hire',
      theme: ThemeData(primaryColor: Color(0xFF0F909E)),
      home: HomePage(),
    );
  }
}
