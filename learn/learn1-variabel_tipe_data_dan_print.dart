// Main method, di dart main method didefinisikan dengan void main(){}
void main() {
  // Ini komen

  // ------------------ Variabel ---------------------
  // Mendeklarasikan variabel
  var x;

  // Mengisi dan mendefinisikan variabel
  x = 6;
  var y = 'Halo Juga';

  // ------------------ Print -------------------
  // Print
  print('Halo ');

  // Print interpolation
  print('$x , $y');

  // ------------------ Tipe data ------------------
  // Tipe data serta penjelasan dan contoh

  // int	| Integer (bilangan bulat)	| 5, -7, 0
  // double	| Bilangan desimal	| 3.14, 18.0, -12.12
  // num	| Bilangan bulat dan bilangan desimal	| 5, 3.14, -99.00
  // bool	| Boolean	| true, false
  // String	| Teks yang terdiri dari 0 atau beberapa karakter	| ‘Dicoding’, ‘Y’, ‘’
  // List	| Daftar nilai	| [1, 2, 3], [‘a’, ‘b’, ‘c’]
  // Map	| Pasangan key-value	| {“x”: 4, “y”: 10}
  // dynamic (var/const/final) | Tipe apa pun
  int angka = 0;
  double desimal = 1.9;
  num number = 900000;
  bool boolean = true;
  String string = 'Halo juga';
  List iniList = ['a', 'b', 'c'];
  Map dict = {'a': 1, 'b': 2};
  // -----
  var sembarang = 'sembarang'; // Var bisa sembarang tipe data
  const sembarangTidakBisaDiubah =
      'sembarang tapi tidak bisa diubah'; // variabel tipe data conte tidak bisa diganti
  final sembarangTidakBisaDiubah2 =
      'Sembarang tidak bisa diubah tapi bisa jadi variabel input';

  // Bedanya const dengan final adalah const tidak bisa kita jadikan variabel yang menampung nilai input
  // Sedangkan final bisa

  // Jika kita mengubah nilai dari variabel sembarang menjadi integer, maka akan terjadi error
}
