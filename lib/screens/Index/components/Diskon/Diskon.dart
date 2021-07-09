import 'package:adaptive_course/screens/Index/components/Diskon/DiskonCard.dart';
import 'package:adaptive_course/models/ListDiskon.dart';
import 'package:flutter/material.dart';

class Diskon extends StatefulWidget {
  @override
  _Diskon createState() => _Diskon();
}

class _Diskon extends State<Diskon> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            top: 5,
          ),
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Diskon Spesial',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                      'berakhir dalam',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 150,
                      height: 22,
                      decoration: BoxDecoration(
                        color: Color(0xffC82222),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_alarm,
                              color: Colors.white,
                              size: 12,
                            ),
                            SizedBox(width: 2),
                            Text(
                                '100 jam 10 menit 10 detik',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 320,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 14,
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
                    child: DiskonCard(
                      listDiskon: diskonList[index],
                    ),
                  ),
                );
              },
              itemCount: diskonList.length,
            ),
          ),
        ),
      ],
    );
  }
}
