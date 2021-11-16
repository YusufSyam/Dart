class Hewan {
  // Membuat variabel private, dengan menambahkan prefix '_' pada nama variabel
  int _age = 0;
  int _weight = 10;

  Hewan(this._age, this._weight);

  void makan(int addWeight) {
    this._weight += addWeight;
  }

  // Membuat setter getter
  void setWeight(int weight) {
    this._weight = weight;
  }

  int getWeight() {
    return this._weight;
  }
}

// Variabel private akan tetap bisa diakses jika dibuat pada file sama, Untuk benar2 menyembunyikannya
// Kita menggunakan file lain dan mengimport class Animal ini pada file tersebut
// void main() {
//   var kucing = Hewan(2, 6);
// kucing._weight = 9;
// }
