// mariafadilla
// Praktikum 1 - Eksperimen Tipe Data List

// Langkah 1 
void main() {
    // var list = [1, 2, 3];
    // assert(list.length == 3);
    // assert(list[1] == 2);
    // print(list.length);
    // print(list[1]);

    // list[1] = 1;
    // assert(list[1] == 1);
    // print(list[1]);

    // Langkah 3 - Modifikasi kode program pada langkah 1
    final list = List<String?>.filled(5, null);
    list[1] = 'Maria Fadilla';
    list[2] = '2141720063';

    print(list[1]);
    print(list[2]);
}