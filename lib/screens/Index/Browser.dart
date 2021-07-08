import 'package:adaptive_course/components/IndexHeader.dart';
import 'package:adaptive_course/components/RekomendasiMateri/RekomendasiMateri.dart';
import 'package:flutter/material.dart';

class Browser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('BROWSER VIEW')
          ],
        ),
      ),
    );
  }
}