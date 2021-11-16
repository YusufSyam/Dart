class Hewan {
  int age = 0;
  int weight = 10;

  Hewan(this.age, this.weight);

  void makan(int addWeight) {
    this.weight += addWeight;
  }

  void setWeight(int weight) {
    this.weight = weight;
  }

  int getWeight() {
    return this.weight;
  }
}

void main() {
  // Cascade notation memungkinkan kita untuk melakukan beberapa urutan operasi pada objek yang sama
  // Kita bisa mengakses property dari object dan menjalankan method di dalamnya bersamaan ketika kita
  // Menginstansiasi object. Cascade operator dituliskan dengan dua tanda titik (.. atau ?..)

  // Berikut kia menginstansiasi objek lalu mengubah properties nya lalu memanggil method nya
  var kucing = Hewan(2, 6)
    ..age = 3
    ..makan(1);

  // Sintaks di atas akan sama dengan:
  // var kucing = Hewan(2, 6);
  // kucing.age = 3;
  // kucing.makan(1);

  print(kucing.getWeight());
  // 7
}
