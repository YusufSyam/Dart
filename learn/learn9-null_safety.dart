void main() {
  // Variabel secara default tidak bisa diisi dengan null
  try {
    var a = null;
  } catch (e) {
    print('Error null');
  }

  // Namun pada beberapa kasus kita memang perlu mengisi sebuah variabel dengan null
  // Solusinya adalah menambahkan '?' di depan tipe data variabel null
  // Tidak bisa var
  String? b = null;
}
