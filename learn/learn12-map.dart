void main() {
  // Map adalah collections yang menyimpan key pada setiap value (dict pada python)

  // ---------------------- Deklarasi --------------------------
  var map1 = {'a': 1, 'b': 2};

  // ---------- Mendapatkan value map berdasarkan key ----------
  print(map1['a']);
  // 1

  // ------------ Mendapatkan daftar key dan values ------------
  // Mendapatkan key
  var map1Keys = map1.keys;

  // Mendapatkan values
  var map1Values = map1.values;

  print(map1Keys);
  // (a, b)

  print(map1Values);
  // (1, 2)

  // ----------------- Menambah/mengubah nilai -------------------
  // Untuk menambahkan key/value ke dalam map, kita bisa melakukannya seperti berikut
  map1['c'] = 3;

  // Jika key sudah ada, maka map akan mengubah nilainya
  map1['b'] = 2000;

  print(map1);
  // {a: 1, b: 2000, c: 3}
}
