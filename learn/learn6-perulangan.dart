void main() {
  // ---------------- Perulangan ------------------
  // For
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  // For each
  var a = <String>['a', 'b', 'c'];

  for (var i in a) {
    print(i);
  }

  a.forEach((element) => print('$element'));

  // While
  var index = 0;
  while (index < 3) {
    print(index++);
  }
  print('iterasi selesai');
}
