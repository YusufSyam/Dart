import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> numberList = List<int>.filled(n, 0, growable: false);

  var inputList = stdin.readLineSync()!.split(' ');

  for (var i = 0; i < inputList.length; i++) {
    numberList[i] = int.parse(inputList[i]);
  }

  var min = numberList[0];
  var index = 0;

  for (var i = 1; i < numberList.length; i++) {
    if (numberList[i] < min) {
      min = numberList[i];
      index = i;
    }
  }

  print('Menor valor: $min');
  print('Posicao: $index');
}
