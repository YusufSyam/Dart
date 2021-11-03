// Untuk menerima input kita memerlukan statement stdin.readLineSync() dari library dart:io
// Mengimport library
import 'dart:io';

void main() {
  // -------------- Output ------------------
  // Untuk mengeluarkan output kita bisa menggunakan print('') dan stdout.write('') dari library dart:io
  // Bedanya print mencetak baris baru sedangkan stdout.write tidak
  stdout.write('Masukkan nama: ');

  // ---------------- Input -----------------
  // Contoh menginput string nama
  // Tanda seru di belakang titik koma menandakan null-safety, artinya input wajib diisi
  String name = stdin.readLineSync()!;

  // Selanjutnya kita akan menginput age
  stdout.write('Masukkan nama: ');

  // Untuk data selain string, kita perlu meng-cast datanya sesuai tipe data yang diinginkan
  // Caranya untuk mengkonversi input string menjadi integer adalah dengan int.parse();
  int age = int.parse(stdin.readLineSync()!);

  // Selanjutnya mengeluarkan output yang menampilkan nama dan umur
  print('Hai $name, kamu berumur $age!');
}
