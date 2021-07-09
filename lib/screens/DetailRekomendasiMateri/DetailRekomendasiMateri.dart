import 'package:adaptive_course/screens/DetailRekomendasiMateri/components/DetailRekomendasi.dart';
import 'package:flutter/material.dart';

import 'components/HeadDetailRekomendasiMateri.dart';

class DetailRekomendasiMateri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeadDetailRekomendasiMateri(),
      body: DetailRekomendasi(),
    );
  }
}