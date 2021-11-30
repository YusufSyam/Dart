void main() {
  // ---------------------- Deklarasi --------------------------
  List list1 = [];

  // Deklarasi list dengan tipe data
  List<int> intList = [1, 2, 3, 4, 5];

  // Jika kita tidak mendeklarasikan tipe data, maka list bertipe data dynamic
  // Kita juga bisa mendeklarasikan tipe data dynamic secara explisit
  List<dynamic> dynamicList = [1, 'String'];

  // Deklarasi list dengan fixed length
  int length = 5;
  var fixedLengthList = List.filled(length, []);

  // ---------------- Mendapatkan nilai list --------------------
  print(intList[0]);

  // Perulangan
  for (int i = 0; i < intList.length; i++) {
    print(intList[i]);
  }

  // Perulangan for each
  intList.forEach((element) => print(element));

  // ---------------- Menambah nilai ke list --------------------
  // Menambah di akhir
  intList.add(6);

  // Menambah di indeks tertentu
  intList.insert(0, 0);

  print(intList);

  // ------------------ Mengubah nilai list -----------------------
  // Kita bisa langsung mengisi indeks list yang mau diubah seperti berikut
  intList[3] = 3000;

  // ------------------- Menghapus nilai list -----------------------

  intList.remove(5); // Menghapus list dengan nilai 5
  intList.removeAt(1); // Menghapus list pada index ke-1
  intList.removeLast(); // Menghapus data list terakhir
  intList.removeRange(0,
      2); // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)

  // --------------------- Spread Operator --------------------------
  // Spread operator digunakan untuk menyebarkan nilai di dalam collections menjadi beberapa elemen

  // Misal kita ingin menggabungkan dua list di bawah menjadi satu list
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];

  // Cara salah, karena ini akan membuat list menjadi 2d
  var allFavorites = [favorites, others];

  /* output
    [[Seafood, Salad, Nugget, Soup], [Cake, Pie, Donut]]
  */

  // Cara benar
  var allFavoritesCorrect = [...favorites, ...others];

  print(allFavoritesCorrect);
  /* output
    [Seafood, Salad, Nugget, Soup, Cake, Pie, Donut]
  */

  // Null safety pada spread operator
  // Misal kita ingin menggabungkan dua list dengan spread operator dan
  // Kita tidak yakin salah satu list mempunyai elemen dan tidak null, kita bisa menuliskan ...?

  var listNull;
  var listNotNull = [0];

  var list2 = [...listNotNull, ...?listNull];

  print(list2);

  /* output
    [0]
  */
}
