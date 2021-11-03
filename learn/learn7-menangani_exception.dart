void main() {
  // Handling exception dengan try catch
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e) {
    // Kalau dibiarkan kosong, maka tidak ada output yang keluar
    print(e);
  }
  print('------------------');

  // Misal memberikan output lain dengan mengspesifikasikan jenis error yaitu IntegerDivisionByZeroException
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on IntegerDivisionByZeroException {
    print('Can not divide by zero.');
  }
  print('------------------');
  // Memberikan stack trace
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('error: $e');
    print('stack trace: $s');
  }
}
