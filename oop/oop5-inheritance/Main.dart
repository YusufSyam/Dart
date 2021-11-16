import 'Ikan.dart';
import 'Kucing.dart';

void main() {
  var ikan = Ikan(1, 1, 'Biru');
  var kucing = Kucing(2, 4, 'Putih');

  // Memanggil fungsi dari class parent
  print(ikan.getWeight());

  // Memanggil fungsi dari class sendiri
  print(kucing.getFurColor());
}
