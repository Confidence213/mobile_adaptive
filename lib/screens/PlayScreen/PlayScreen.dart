import 'package:adaptive_course/screens/PlayScreen/components/HeadPlay.dart';
import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeadPlay(),
      body: SafeArea(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height/2,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.library_books,
                    color: Color(0xff326CE5),
                    size: 80,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Anda belum memiliki materi',
                     style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 167,
                    child: Text(
                      'cari materi yang ingin kamu pelajari, lalu pilih materi tersebut!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.normal
                      ),
                      ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      print('playscreen container clicked! telusuri materi!');
                    },
                    child: Container(
                        width: 167,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xff326CE5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Telusuri Materi',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                  )
                ],
              ),
            ),
          )
          ),
      ),
    );
  }
}