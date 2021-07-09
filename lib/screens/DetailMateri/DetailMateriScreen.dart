import 'package:adaptive_course/models/ListMateri.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailMateriScreen extends StatelessWidget {
  final Materi materi;

  DetailMateriScreen({required this.materi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          '${materi.judul}',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
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
            Icons.share,
            color: Colors.black,
          ),
        ),
      ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width/1.5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(materi.imageMateri),
                  SizedBox(height: 10,),
                  Text(
                    materi.judul,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(materi.pemateri),
                  SizedBox(height: 5,),
                  Text(materi.deskripsi),
                  SizedBox(height: 5,),
                  Text(materi.harga),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
