import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);

  List<int> fibList = [];

  for (int i = 0; i < N; i++) {
    if (i == 0) {
      fibList.add(0);
    } else if (i == 1) {
      fibList.add(1);
    } else {
      fibList.add(fibList[i - 1] + fibList[i - 2]);
    }
  }

  for (int i = 0; i < fibList.length; i++) {
    stdout.write('${fibList[i]}${(i == fibList.length - 1) ? '' : ' '}');
    print('a');
  }
}
