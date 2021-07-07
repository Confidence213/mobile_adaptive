import 'package:adaptive_course/assets/HeadMenu.dart';
import 'package:adaptive_course/assets/BottomNavigationBar.dart';
import 'package:adaptive_course/screens/IndexScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaptive Course',
      theme: ThemeData(),
      home: Index(),
    );
  }
}

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeadMenu(),
      body: IndexScreen(),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
