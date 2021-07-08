import 'package:adaptive_course/screens/Index/IndexScreen.dart';
import 'package:adaptive_course/screens/PlayScreen/PlayScreen.dart';
import 'package:adaptive_course/screens/Profile/ProfileScreen.dart';
import 'package:adaptive_course/screens/Search/SearchScreen.dart';
import 'package:adaptive_course/screens/Whistlist/WishlistScreen.dart';
import 'package:animations/animations.dart';
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

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
    IndexScreen(),
    SearchScreen(),
    PlayScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
        FadeThroughTransition(
          animation: primaryAnimation, 
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: pageList[pageIndex],
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff326CE5),
        unselectedItemColor: Colors.black,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Beranda',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Pencarian',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Materi Saya',
            icon: Icon(Icons.live_tv ),
          ),
          BottomNavigationBarItem(
            label: 'Wishlist',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Profil',
            icon: Icon(Icons.account_circle),
          ),
        ],
    ),
    );
  }
}
