import 'dart:io';

void main() {
  stdout.write('Masukkan suhu fahrenheit: ');
  int fahrenheit = int.parse(stdin.readLineSync()!);

  print(
      '$fahrenheit derajat fahrenheit sama dengan ${((fahrenheit - 32) * 5 / 9)} derajat celsius');
}
