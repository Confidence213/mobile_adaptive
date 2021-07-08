import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> imagesList = [
  'assets/images/header/1.jpg',
  'assets/images/header/2.jpg',
  'assets/images/header/3.jpg',
  'assets/images/header/4.jpg',
  'assets/images/header/5.jpg',
];

class IndexHeader extends StatefulWidget {
  @override
  _IndexHeaderState createState() => _IndexHeaderState();
}

class _IndexHeaderState extends State<IndexHeader> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                // enlargeCenterPage: true,
                //scrollDirection: Axis.vertical,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      _currentIndex = index;
                    },
                  );
                },
              ),
              items: imagesList.map((item) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagesList.map((urlOfItem) {
              int index = imagesList.indexOf(urlOfItem);
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 0.75, color: Color(0xff326CE5)),
                  color:
                      _currentIndex == index ? Color(0xff326CE5) : Colors.white,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
