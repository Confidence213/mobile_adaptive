import 'package:adaptive_course/models/ListPartner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PartnerCard extends StatelessWidget {
  PartnerCard({required this.listPartner});

  Partner listPartner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 2,
        left: 2,
      ),
      child: Row(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.5,
                    offset: Offset(0, 0), // Shadow position
                  ),
                ],
              ),
            width: 200,
            child:ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Image.asset(
                listPartner.imagePartner,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
