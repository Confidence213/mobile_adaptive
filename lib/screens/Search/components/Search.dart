import 'package:adaptive_course/screens/DetailMateri/DetailMateriScreen.dart';
import 'package:adaptive_course/screens/Search/components/SearchCard.dart';
import 'package:adaptive_course/models/ListMateri.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Materi Populer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Divider(
              color: Color(0xffF3F4F6),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.74,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final Materi materi = materiList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
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
          ],
        ),
      ),
    );
  }
}
