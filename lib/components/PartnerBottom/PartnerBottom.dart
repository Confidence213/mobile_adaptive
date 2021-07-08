import 'package:adaptive_course/components/PartnerBottom/PartnerCard.dart';
import 'package:adaptive_course/models/ListPartner.dart';
import 'package:flutter/material.dart';

class PartnerBottom extends StatefulWidget {
  @override
  _PartnerBottom createState() => _PartnerBottom();
}

class _PartnerBottom extends State<PartnerBottom> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            bottom: 5,
          ),
          child: Container(
            alignment: Alignment.topLeft,
            child:Text(
              'Partner Kami',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 14,
              bottom: 15,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 7,
                    top: 2,
                  ),
                  child: Container(
                    child: PartnerCard(
                      listPartner: partnerList[index],
                    ),
                  ),
                );
              },
              itemCount: partnerList.length,
            ),
          ),
        ),
      ],
    );
  }
}
