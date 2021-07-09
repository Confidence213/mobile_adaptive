import 'package:adaptive_course/screens/DetailMateri/DetailMateriScreen.dart';
import 'package:adaptive_course/screens/Search/components/SearchCard.dart';
import 'package:adaptive_course/models/ListMateri.dart';
import 'package:flutter/material.dart';

class DetailRekomendasi extends StatefulWidget {
  @override
  _DetailRekomendasi createState() => _DetailRekomendasi();
}

class _DetailRekomendasi extends State<DetailRekomendasi> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final Materi materi = materiList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailMateriScreen(materi: materi),
                      ));
                },
                child: MateriCard(
                  listMateri: materiList[index],
                ),
              );
            },
            itemCount: materiList.length,
          ),
        ),
      ),
    );
  }
}
