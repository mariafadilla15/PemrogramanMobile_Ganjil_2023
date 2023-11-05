// mariafadilla
// Praktikum 4 - Eksperimen Tipe Data List: Spread dan Control-flow Operators

void main() {
  // Langkah 1 
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // Perbaikan
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  // Langkah 3 - Menambahkan kode program pada langkah 1
  // list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);

  // Perbaikan
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);

  var NIM = [2141720063];
  var list4 = ["Maria Fadilla", ...NIM];
  print(list4);

  // Langkah 4 - Menambahkan Kode Program
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // Perbaikan
  var promoActive = true; // Mendefinisikan promoActive sebagai true
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print("Nav with promoActive true: $nav");

  var promoActive1 = false; // Mengubah promoActive menjadi false
  // ignore: dead_code
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive1) 'Outlet'];
  print("Nav with promoActive false: $nav2");

  // Langkah 5 - Menambahkan Kode Program
  // var login = 'Manager'; // Mendefinisikan variabel login
  // var nav3 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  // print("Nav with login case 'Manager': $nav3");;

  var login = 'Employee'; // Mengubah login menjadi nilai lain
  var nav3 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print("Nav with login case '$login': $nav3");
}

//Langkah 6
// var listOfInts = [1, 2, 3];
// var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
// assert(listOfStrings[1] == '#1');
// print(listOfStrings);
// }
