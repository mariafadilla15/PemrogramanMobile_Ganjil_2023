void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Maria Fadilla',
    'NIM': 2141720063
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    '1': 'Maria Fadilla',
    '3': 2141720063
  };

  // Langkah 3 - Menambahkan kode program pada langkah 1
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Maria Fadilla';
  gifts['NIM'] = '2141720063';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases['1'] = 'Maria Fadilla';
  nobleGases['3'] = '2141720063';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}