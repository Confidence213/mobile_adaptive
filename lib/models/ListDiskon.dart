class Diskon {
  String judul;
  String pemateri;
  String deskripsi;
  String bintang;
  String jumlahPenilai;
  String imageMateri;
  String harga;
  String hargaDiskon;

  Diskon({
    required this.judul,
    required this.pemateri,
    required this.deskripsi,
    required this.bintang,
    required this.jumlahPenilai,
    required this.imageMateri,
    required this.harga,
    required this.hargaDiskon,
  });
}

var diskonList = [
  Diskon(
    judul: 'Belajar Flutter untuk pemula, Multi Platform Application',
    pemateri: 'bapak ini itu',
    deskripsi: 'kurusus yang mantap dijamin jadi bisa dah',
    bintang: '5',
    jumlahPenilai: '323',
    imageMateri: 'assets/images/materi/flutter.jpg',
    harga: 'Rp. 435.000',
    hargaDiskon: 'Rp. 317.000'
  ),
  Diskon(
    judul: 'Belajar Docker Dengan Mudah Cocok Untuk Pemula',
    pemateri: 'nathan naoval dkk',
    deskripsi: 'ini adalah kursus yang tidak bagus dan teori jeleklodon',
    bintang: '5',
    jumlahPenilai: '1990',
    imageMateri: 'assets/images/materi/kubernetes.jpg',
    harga: 'Rp. 35.000',
    hargaDiskon: 'Rp. 17.000'
  ),
  Diskon(
    judul: 'Docker untuk Expert Mudah Cocok Untuk Pemula',
    pemateri: 'nathan docker naoval dkk',
    deskripsi: 'docker ini adalah kursus yang tidak bagus dan teori jeleklodon',
    bintang: '3',
    jumlahPenilai: '8990',
    imageMateri: 'assets/images/materi/docker.jpg',
    harga: 'Rp. 40.000',
    hargaDiskon: 'Rp. 20.000'
  ),
  Diskon(
    judul: 'RESTfull API',
    pemateri: 'nathan dan naoval dkk',
    deskripsi: 'API ini adalah kursus yang tidak bagus dan teori jeleklodon',
    bintang: '4',
    jumlahPenilai: '1434',
    imageMateri: 'assets/images/materi/api.jpg',
    harga: 'Rp. 135.000',
    hargaDiskon: 'Rp 100.000'
  ),
];
