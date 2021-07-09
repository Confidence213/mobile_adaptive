import 'package:adaptive_course/models/ListMateri.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MateriCard extends StatelessWidget {
  MateriCard({required this.listMateri});

  Materi listMateri;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 8,
        left: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/3.75,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    listMateri.imageMateri,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: MediaQuery.of(context).size.width/2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[ 
                    Text(
                      listMateri.judul,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                      listMateri.pemateri,
                      style: TextStyle(
                        fontSize: 11,
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
                        fontSize: 13,
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
                          style: TextStyle(
                          fontSize: 11,
                        ),
                          ),
                      ),
                    )
                  ],
                  ),
              ),
            ],
          ),
          Divider(
            color: Color(0xffF3F4F6),
          )
        ],
      ),
    );
  }
}
