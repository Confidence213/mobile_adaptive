import 'package:adaptive_course/screens/Index/Browser.dart';
import 'package:adaptive_course/screens/Index/Mobile.dart';
import 'package:adaptive_course/screens/Index/Tablet.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return Mobile();
        } else if (constraints.maxWidth <= 1100) {
          return Tablet();
        } else {
          return Browser();
        }
      },
    );
  }
}
