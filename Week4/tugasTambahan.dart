import 'dart:io';

void main() {
  // deklarasi variabel untuk menyimpan tinggi segitiga
  int rows; 

  // melakukan loop terus-menerus untuk meminta input yang valid dari user
  do {
    stdout.write('Masukkan tinggi segitiga (bilangan ganjil dan minimal 5): ');
    
    // membaca input dari user dan mengonversinya ke integer
    rows = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    // validasi input: harus ganjil dan minimal 5
    if (rows % 2 == 0 || rows < 5) {
      print('Input tidak valid. Masukkan bilangan ganjil minimal 5.');
    }
  } while (rows % 2 == 0 || rows < 5); // loop terus berlanjut jika input tidak valid

  // loop untuk mencetak segitiga
  for (int i = 1; i <= rows; i++) {
    // loop untuk mencetak spasi sebelum bintang pada setiap baris
    for (int j = 1; j <= rows - i; j++) {
      stdout.write(' '); // mencetak spasi untuk membentuk pola segitiga
    }

    // loop untuk mencetak bintang pada setiap baris
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write('*'); // mencetak bintang
    }

    print(''); // pindah ke baris berikutnya setelah setiap baris segitiga selesai dicetak
  }
}


