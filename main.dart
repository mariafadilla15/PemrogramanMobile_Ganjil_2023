//mariafadilla - jobsheet 2 pemrograman mobile

import 'dart:io'; //import library

void main() {
  // array list untuk menyimpan variabel nama dan umur dari input
  var namaList = <String>[];
  var umurList = <int>[];

  // perulangan untuk memasukkan input
  for (;;) {
    print('(Ketik "selesai" untuk mengakhiri)');
    print('Masukkan nama: ');
    String inputNama = stdin.readLineSync()!; 
    // membaca input nama dari keyborad dan menyimpannya dalam variabel inputNama

    if (inputNama.toLowerCase() == 'selesai') {
      break; //menghentikan perulangan dengan input kata 'selesai'
    }

    print('Masukkan umur (tahun): ');
    int inputUmur = int.parse(stdin.readLineSync()!); 
    // membaca input umur dari keyborad dan menyimpannya dalam variabel inputUmur

    namaList.add(inputNama);
    umurList.add(inputUmur);
    // menambahkan input nama dan umur ke dalam list 
  }

  // menggabungkan semua nama dalam namaList
  String gabungNama = namaList.join(' '); 
  // menjumlahkan semua umur dalam umurList
  int totalUmur = umurList.reduce((a, b) => a + b);

  // menampilkan hasil akhir gabungan nama dan total umur
  print('====================================');
  print('Nama: $gabungNama');
  print('Umur: $totalUmur tahun');
}