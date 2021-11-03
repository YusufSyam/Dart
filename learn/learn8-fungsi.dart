void main() {
  // Memanggil void fungsi biasa
  greet();

  // Memanggil fungsi dengan kembalian (return value)
  print(tambah(1, 2));

  // Memanggil fungsi satu baris
  fungsiSatuBaris();

  // Memanggil fungsi dengan optional parameter (namun tetap harus berurutan)
  greetOptionalUser('Yusuf', null);

  // Memanggil fungsi dengan optional parameter, dan parameternya tidak harus berurutan
  // Tapi nama parameterya harus selalu didefinisikan
  greetOptionalUserNotRespectiveParameter(b: 19, a: null);
}

void greet() {
  print('Ello');
}

int tambah(int a, int b) {
  return a + b;
}

void fungsiSatuBaris() => print('Satu baris!');

// Membuat fungsi dengan optional parameter dengan membuat parameter menjadi list,
// Karena pada fungsi dengan optional parameter, kita mengharapkan nilai parameter tetap diisi
// Walaupun dengan null, maka kita menambahkan '?' (null safety) di depan tipe data parameter
// Null juga bisa diatasi dengan menambahkan 'required' di belakang tipe data parameter
void greetOptionalUser([String? a, int? b]) {
  var c;
  if (a == null) a = 'entah';

  if (b == null)
    c = 'nda tau';
  else
    c = b;

  print('Hi $a Kau berumur $c!');
}

// Membuat fungsi dengan optional parameter namun, parameternya tidak harus berurutan saat fungsi dipanggil
// Seperti di python
// Caranya kita bungkus parameter dengan kurung kurawal '{}', null tetap harus diatasi
void greetOptionalUserNotRespectiveParameter(
    {required String? a, required int? b}) {
  var c;
  if (a == null) a = 'entah';

  if (b == null)
    c = 'nda tau';
  else
    c = b;

  print('Hi $a Kau berumur $c!');
}
