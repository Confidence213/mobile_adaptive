class Materi {
  String judul;
  String pemateri;
  String deskripsi;
  String bintang;
  String jumlahPenilai;
  String imageMateri;
  String harga;

  Materi({
    required this.judul,
    required this.pemateri,
    required this.deskripsi,
    required this.bintang,
    required this.jumlahPenilai,
    required this.imageMateri,
    required this.harga,
  });
}

var materiList = [
  Materi(
    judul: 'Belajar Docker Dengan Mudah Cocok Untuk Pemula',
    pemateri: 'nathan naoval dkk',
    deskripsi: 'ini adalah kursus yang tidak bagus dan teori jeleklodon',
    bintang: '5',
    jumlahPenilai: '1990',
    imageMateri: 'assets/images/materi/kubernetes.jpg',
    harga: 'Rp. 35.000',
  ),
  Materi(
    judul: 'Docker untuk Expert Mudah Cocok Untuk Pemula',
    pemateri: 'nathan docker naoval dkk',
    deskripsi: 'docker ini adalah kursus yang tidak bagus dan teori jeleklodon',
    bintang: '3',
    jumlahPenilai: '8990',
    imageMateri: 'assets/images/materi/docker.jpg',
    harga: 'Rp. 40.000',
  ),
  Materi(
    judul: 'RESTfull API',
    pemateri: 'nathan dan naoval dkk',
    deskripsi: 'API ini adalah kursus yang tidak bagus dan teori jeleklodon',
    bintang: '4',
    jumlahPenilai: '1434',
    imageMateri: 'assets/images/materi/api.jpg',
    harga: 'Rp. 135.000',
  ),
  Materi(
    judul: 'Dasar Kubernetes',
    pemateri: 'nathan naoval dkk',
    deskripsi: 'ini adalah kursus yang tidak bagus dan teori jeleklodon',
    bintang: '5',
    jumlahPenilai: '1990',
    imageMateri: 'assets/images/materi/kubernetes.jpg',
    harga: 'Rp. 35.000',
  ),
  Materi(
    judul: 'Docker untuk Expert',
    pemateri: 'nathan docker naoval dkk',
    deskripsi: 'docker ini adalah kursus yang tidak bagus dan teori jeleklodon',
    bintang: '3',
    jumlahPenilai: '8990',
    imageMateri: 'assets/images/materi/docker.jpg',
    harga: 'Rp. 40.000',
  ),
  Materi(
    judul: 'RESTfull API',
    pemateri: 'nathan dan naoval dkk',
    deskripsi: 'API ini adalah kursus yang tidak bagus dan teori jeleklodon',
    bintang: '4',
    jumlahPenilai: '1434',
    imageMateri: 'assets/images/materi/api.jpg',
    harga: 'Rp. 35.000',
  ),
];
