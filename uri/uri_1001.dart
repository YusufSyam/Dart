import 'dart:io';

void main() {
  var A = stdin.readLineSync()!;
  var B = stdin.readLineSync()!;

  var X = int.parse(A) + int.parse(B);

  print('X = $X');
}
