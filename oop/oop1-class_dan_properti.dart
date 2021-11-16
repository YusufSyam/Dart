// Membuat kelas hewan
class hewan {
  // Membuat atribut/properti kelas, jika kita tidak beri default value
  // Atau null safety (?), maka harus diberi prefix late
  late int age;
}

void main() {
  var anjing = hewan();
  anjing.age = 9;

  print('Umur anjing adalah ${anjing.age}');
}
