class Motor {
  String merkMotor = '';
  int bensin = 2;

  // Membuat constructor
  Motor(String merkMotor, int bensin) {
    this.merkMotor = merkMotor;
    this.bensin = bensin;
  }

  // Jika constructor hanya digunakan untuk mengassign value, maka kita bisa
  // Mempersingkat sintaks nya menjadi seperti ini
  // Motor(this.merkMotor, this.bensin);

  // Membuat method
  void isiBensin(int jumlahIsi) {
    this.bensin = this.bensin + jumlahIsi;
  }
}

void main() {
  var motorNinja = Motor('Ninja', 2);

  print('Bensin motor ${motorNinja.merkMotor} pertama: ${motorNinja.bensin}');

  motorNinja.isiBensin(2);

  print(
      'Bensin motor ${motorNinja.merkMotor} setelah diisi: ${motorNinja.bensin}');
}
