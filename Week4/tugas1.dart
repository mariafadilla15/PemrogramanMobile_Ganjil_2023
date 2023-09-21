import 'dart:io';

int mainCode() {
  // declaration variable
  int oilThatShouldBuy = 0;

  // ---[ Tulis kodemu setelah baris ini ]---
  stdout.write("Apakah ada telur? (ya/tidak): "); 
  // membaca input dari user
  String input = stdin.readLineSync()!.toLowerCase();

  // seleksi kondisi validasi input user
  if (input == "ya") {
    oilThatShouldBuy = 6; 
    // jika input adalah 'iya', maka beli minyak 6
  } else if (input == "tidak") {
    oilThatShouldBuy = 1;
    // jika input adalah 'tidak', maka beli minyak 1
  } else {
    // jika input selain ya dan/ tidak, maka muncul pesan peringatan kesalahan
    print("=== Maaf, silahkan hanya menuliskan 'ya' atau 'tidak' sebagai jawaban ===");
  }

  // ---[ Jangan menulis atau mengubah kode di bawah ini ]---
  // mengembalikan nilai dari hasil seleksi kondisi dan menyimpannya pada variabel oilThatShouldBuy
  return oilThatShouldBuy;
}

void main() {
  // memanggil mainCode() dan menyimpan hasilnya dalam variabel oilToBuy
  int oilToBuy = mainCode();
  // seleksi kondisi jika jumlah minyak > 0 maka cetak pesan yang menyebutkan jumlah minyak yang harus dibeli
  if (oilToBuy > 0) {
    print("Anda harus membeli $oilToBuy minyak.");
  }
}