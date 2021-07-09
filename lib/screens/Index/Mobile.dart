import 'package:adaptive_course/screens/Index/components/Diskon/Diskon.dart';
import 'package:adaptive_course/screens/Index/components/IndexHeader/IndexHeader.dart';
import 'package:adaptive_course/screens/Index/components/Partner/PartnerBottom.dart';
import 'package:adaptive_course/screens/Index/components/RekomendasiMateri/RekomendasiMateri.dart';
import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
            minWidth: 320,
          ),
          child: Column(
            children: <Widget>[
              IndexHeader(),
              RekomendasiMateri(),
              Diskon(),
              PartnerBottom(),
            ],
          ),
        ),
      ),
    );
  }
}