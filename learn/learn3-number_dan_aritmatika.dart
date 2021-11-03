import 'dart:math';

void main() {
  // Number
  // Untuk Dart VM variabel integer dapat menyimpan nilai mulai dari -2^63 hingga 2^63 - 1,
  // Sementara jika dikompilasi ke JavaScript integer memiliki nilai dari -2^53 sampai 2^53 - 1
  // Kita juga bisa memasukkan kode hex sebagai integer
  int hex = 0xff;

  print(hex);

  // ---------------------- Operasi aritmatik -------------------------
  int a = 3;
  int b = 4;

  print(a + b);
  print(a - b);
  print(a / b);
  print(a * b);
  print(a % b);

  // Pembagian, mengembalikan nilai int
  print(a ~/ b);

  // Menambah satu pada integer
  a++;
  a += 1;

  // Kita juga bisa menggunakan fungsi dari library dart:math untuk operasi aritmatik seperti pangkat2
  print(pow(9, 2));

  // ------------- Built-in function untuk number ----------------
  // Abs
  double negative = -1.9;
  double negative2 = negative.abs();

  // Ceil
  double decimal = 1.2;
  double decimal2 = decimal.ceilToDouble();

  // Floor
  double decimal3 = 1.9;
  double decimal4 = decimal3.floorToDouble();

  print('abs: $negative, ceil: $decimal, floor: $decimal2');

  // -------------------------- Casting ---------------------------
  // String -> int
  var eleven = int.parse('11');

  // String -> double
  var elevenPointTwo = double.parse('11.2');

  // int -> String
  var elevenAsString = 11.toString();

  // double -> String, toStringAsFixed mendefinisikan format angkanya
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'
  print(piAsString);
}
