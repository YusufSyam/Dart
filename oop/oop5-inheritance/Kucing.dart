import 'Hewan.dart';

class Kucing extends Hewan {
  late String _furColor;

  // Cara membuat konstruktor dengan memanggil konstruktor dari kelas super
  Kucing(int age, int weight, String furColor) : super(age, weight) {
    this._furColor = furColor;
  }

  String getFurColor() {
    return this._furColor;
  }
}
