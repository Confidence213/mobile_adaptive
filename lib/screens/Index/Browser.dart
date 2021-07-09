import 'package:flutter/material.dart';

class Browser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('This Is Browser View! we will add it letter')
          ],
        ),
      ),
    );
  }
}