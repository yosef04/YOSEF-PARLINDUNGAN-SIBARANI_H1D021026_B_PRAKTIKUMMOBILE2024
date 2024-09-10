import 'dart:io';

void main() {
  stdout.write('Masukkan angka pertama: ');
  String? input1 = stdin.readLineSync();
  double angka1 = double.parse(input1!);

  stdout.write('Masukkan operator (+, -, *, /): ');
  String? operator = stdin.readLineSync();

  stdout.write('Masukkan angka kedua: ');
  String? input2 = stdin.readLineSync();
  double angka2 = double.parse(input2!);

  double hasil = 0;

  if (operator == '+') {
    hasil = angka1 + angka2;
  } else if (operator == '-') {
    hasil = angka1 - angka2;
  } else if (operator == '*') {
    hasil = angka1 * angka2;
  } else if (operator == '/') {
    if (angka2 != 0) {
      hasil = angka1 / angka2;
    } else {
      print('Error: Tidak bisa membagi dengan 0.');
      return;
    }
  } else {
    print('Operator tidak valid');
    return;
  }

  print('Hasil: $angka1 $operator $angka2 = $hasil');
}