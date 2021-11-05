import 'dart:io';

void main() {
  var X = int.parse(stdin.readLineSync()!);
  var Y = int.parse(stdin.readLineSync()!);

  var smaller = (X > Y) ? Y : X;
  var greater = (X == smaller) ? Y : X;

  int sum = 0;
  for (int i = smaller + 1; i < greater; i++) {
    if (i % 2 == 1) {
      sum += i;
    }
  }

  print(sum);
}
