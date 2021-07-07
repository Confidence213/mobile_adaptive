import 'package:flutter/material.dart';

class HeadMenu extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      title: Image.asset(
        'assets/images/logo.png',
        height: 45,
        width: 144,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.local_grocery_store,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
