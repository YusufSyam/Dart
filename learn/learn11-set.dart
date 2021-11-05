void main() {
  // Set adalah tipe data collections yang hanya menyimpan nilai unik (tidak terdapat duplikat)

  // ---------------------- Deklarasi --------------------------
  // Ada beberapa cara untuk mendeklarasikan set
  var set1 = {1, 2, 3, 4, 2};
  var set2 = new Set.from([1, 2, 3, 4, 2]);

  Set<int> set3 = new Set.from([1, 2, 3, 4, 2]);

  print(set1);
  print(set3);

  // ----------------- Mendapatkan nilai set -----------------
  var index = 0;
  print(set3.elementAt(index));

  // ----------------- Menambah nilai ke set ------------------
  // Menambah satu nilai
  set3.add(9);

  // Menambah lebih dari satu nilai
  var tambahKeSet = [4, 5, 6];
  set3.addAll(tambahKeSet);

  // Dan tentu saja set tetap menyeleksi duplikat

  // ---------------- Menghapus element set ------------------
  // Menghapus nilai tertentu pada set
  set3.remove(9);

  // --------------- Union dan Intersection -------------------
  // Union = gabungan
  // Intersection= irisan

  var set4 = {2, 3, 6, 9};

  var gabungan = set3.union(set4);
  var irisan = set3.intersection(set4);

  print(gabungan);
  // {1, 2, 3, 4, 5, 6, 9}

  print(irisan);
  // {2, 3, 6}
}
