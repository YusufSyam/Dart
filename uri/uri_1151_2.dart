import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);

  int twoBehind = 0;
  int oneBehind = 1;

  String result = '';

  for (int i = 0; i < N; i++) {
    var printing;
    var spacing = (i < N - 1) ? ' ' : '';

    if (i == 0) {
      printing = twoBehind;
    } else if (i == 1) {
      printing = oneBehind;
    } else {
      printing = twoBehind + oneBehind;

      twoBehind = oneBehind;
      oneBehind = printing;
    }

    result += '$printing$spacing';
  }

  stdout.write('$result');
}
