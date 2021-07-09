import 'package:flutter/material.dart';

class HeadDetailRekomendasiMateri extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Rekomendasi Materi',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey, 
          width: 0.5
        ),
      ),
      elevation: 0,
       iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.transparent,
      bottomOpacity: 30,
      actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.local_grocery_store,
          color: Colors.black,
        ),
      ),
    ],
    );
  }
}
