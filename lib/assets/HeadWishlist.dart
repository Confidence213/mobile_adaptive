import 'dart:ui';

import 'package:flutter/material.dart';

class HeadWishlist extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      title: Text(
        'Whistlist',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ) ,
        ),
    );
  }
}
