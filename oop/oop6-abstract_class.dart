// Membuat abstract class, dengan menambahkan keyword abstract
abstract class Hewan {
  // Abstract class hanya bisa mempunyai atribut tidak bisa punya method
  late String name;
  late int age;
  late double weight;

  Hewan(this.name, this.age, this.weight);
}
