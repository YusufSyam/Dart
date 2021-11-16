import 'Hewan.dart';

class Ikan extends Hewan {
  late String _skinColor;

  // Cara membuat konstruktor dengan memanggil konstruktor dari kelas super
  Ikan(int age, int weight, String skinColor) : super(age, weight) {
    this._skinColor = skinColor;
  }

  String getFurColor() {
    return this._skinColor;
  }
}
