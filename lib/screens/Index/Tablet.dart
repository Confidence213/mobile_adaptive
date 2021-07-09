import 'package:flutter/material.dart';

class Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('This Is Tablet View! we will add it letter')
          ],
        ),
      ),
    );
  }
}