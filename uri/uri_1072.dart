import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  int inInterval = 0;
  int outInterval = 0;

  for (int i = 0; i < n; i++) {
    int input = int.parse(stdin.readLineSync()!);

    if (input >= 10 && input <= 20) {
      inInterval++;
    } else {
      outInterval++;
    }
  }

  print('$inInterval in');
  print('$outInterval out');
}
