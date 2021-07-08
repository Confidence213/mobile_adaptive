import 'package:adaptive_course/models/ListMateri.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class MateriCard extends StatelessWidget {
  MateriCard({required this.listMateri});

  Materi listMateri;

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
                    listMateri.imageMateri,
                    fit: BoxFit.cover,  
                  ),
                ),
                SizedBox(height: 8.0,),
                Text(
                  listMateri.judul,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(
                  listMateri.pemateri,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                  Text(listMateri.bintang),
                  SizedBox(width: 5,),
                  Text('(${listMateri.jumlahPenilai})'),
                  ],
                ),
                SizedBox(height: 5.0,),
                Text(
                  listMateri.harga,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  width: 64,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color(0xffFFE992),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  
                  child: Center(
                    child: Text(
                      'Terlaris',
                      textAlign: TextAlign.center,
                      ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
