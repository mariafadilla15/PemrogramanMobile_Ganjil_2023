// mariafadilla
// Praktikum 2 - Eksperimen Tipe Data Set

// Langkah 1 
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Langkah 3 - Menambahkan kode program pada langkah 1 
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  //var names3 = {}; // Creates a map, not a set.

  // Menambahkan elemen Nama dan NIM menggunakan fungsi .add()
  names1.add('Maria Fadilla');
  names1.add('2141720063');

  // Menambahkan elemen Nama dan NIM menggunakan fungsi .addAll()
  names2.addAll(['Maria Fadilla', '2141720063']);

  print(names1);
  print(names2);
  //print(names3);
}