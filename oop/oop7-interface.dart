import 'oop6-abstract_class.dart';

// Dart tidak mempunyai keyword untuk menyatakan interface, sebaliknya
// Kita bisa mengaplikasikan interface secara eksplisit menggunakan keyword implement

// Membuat interface
class Flyable {
  fly() {}
}

// Membuat class yang mengekstend abstrak pada oop6 dan meng-implement interface flyable
class Dog extends Hewan implements Flyable {
  String furColor = '';

  Dog(String name, int age, double weight, this.furColor)
      : super(name, age, weight);

  // Saat mengimplements suatu interface, kita HARUS mengoverride fungsinya
  @override
  void fly() {
    print('${this.name} is flying.. weight consumed');
    this.weight -= 0.5;
  }
}

void main() {
  Dog anjing = Dog('Heli', 6, 5.8, 'Orange');
  anjing.fly();

  print(anjing.weight);
}
