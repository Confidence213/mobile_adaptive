import 'package:adaptive_course/models/ListDiskon.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class DiskonCard extends StatelessWidget {
  DiskonCard({required this.listDiskon});

  Diskon listDiskon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 2,
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 260,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[ 
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    listDiskon.imageMateri,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.0,),
                Text(
                  listDiskon.judul,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(
                  listDiskon.pemateri,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                  Text(listDiskon.bintang),
                  SizedBox(width: 5,),
                  Text('(${listDiskon.jumlahPenilai})'),
                  ],
                ),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Container(
                      width: 28,
                      height: 23,
                      decoration: BoxDecoration(
                        color: Color(0xffF19CB1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '50%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffFF3A3A),
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2,),
                    Text(
                      listDiskon.harga,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                        color: Color(0xff8F8F8F)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0,),
                Text(
                  listDiskon.hargaDiskon,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
