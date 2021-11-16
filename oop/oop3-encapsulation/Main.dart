// Mengimport file dart encapsulation
import 'oop3-encapsulation.dart';

void main() {
  var kucing = Hewan(2, 6);

  // Akan error
  // kucing._weight = 9;

  print(kucing.getWeight());

  kucing.makan(1);

  print(kucing.getWeight());
}
