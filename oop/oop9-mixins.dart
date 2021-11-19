// Jadi mixins itu seperti kelas yang berperan sebagai parent class
// Suatu class bisa memiliki lebih dari satu mixins

// Misal kita punya parent class
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

// Lalu ada dua anak, kelas ikan terbang dengan burung
// Jadi kita akan membuat 3 mixins, berenang, berjalan, dan terbang

// Membuat mixins berenang
mixin berenang {
  void berenang_() {
    print('Lagi berenang...');
  }
}

// Kita juga bisa membuat mixin menjadi class jika kita ingin itu berperilaku sebagai class
class berjalan {
  void berjalan_() {
    print('Lagi berjalan...');
  }
}

mixin terbang {
  void terbang_() {
    print('Lagi terbang...');
  }
}

// Lalu baru kita membuat class nya

// Membuat ikan terbang turunan dari hewan yang bisa berenang dan terbang
// Kita mendeklarasikan mixin pada class dengan keyword 'with'
class IkanTerbang extends Hewan with berenang, terbang {
  IkanTerbang(int age, int weight) : super(age, weight);
}

class Burung extends Hewan with berjalan, terbang {
  Burung(int age, int weight) : super(age, weight);
}

void main() {
  var burung = Burung(1, 2);
  burung.terbang_();

  var ikanTerbang = IkanTerbang(1, 3);
  ikanTerbang.berenang_();

  // Sekedar info:
  // Mixin bisa mengatasi permasalahan diamond inheritance
  // Karena mengaplikasikan stack pada setiap properties bernama sama
}
