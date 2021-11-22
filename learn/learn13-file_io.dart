import 'dart:io';

void main() {
  // Membuat file baru, parameter dalam file adalah direktori beserta nama file dan ekstensinya
  var f = new File('Hello world.txt');

  // Jika file belum ada, maka akan dibuat, jika sudah, maka akan ditimpa
  f.writeAsStringSync('Hello World!\nHello World!');

  // Menulis file dan mengappend dengan file sebelumnya jika telah ada
  f.writeAsStringSync('Hello World!\nHello World!', mode: FileMode.append);

  // Membaca file sebagai string
  print(f.readAsStringSync());
  // print(f.readAsLines());

  // Menghapus file
  // f.deleteSync();
}
