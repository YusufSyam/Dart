import 'dart:io';

void main() {
  var input = stdin.readLineSync()!;
  var inputList = input.split(" ");

  List<int> rawList = inputList.map(int.parse).toList();
  List<int> sortedList = [];

  while (rawList.length > 0) {
    var min = 1 << 32;

    for (int i = 0; i < rawList.length; i++) {
      if (rawList[i] < min) {
        min = rawList[i];
      }
    }
    rawList.remove(min);
    sortedList.add(min);
  }

  sortedList.forEach((element) => (print(element)));
  print('');
  inputList.forEach((element) => (print(element)));
}
