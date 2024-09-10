import 'dart:io';

int hitungFaktorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * hitungFaktorial(n - 1);
  }
}

void main() {
  stdout.write('Masukkan bilangan: ');
  String? input = stdin.readLineSync();
  int angka = int.parse(input!);

  int hasil = hitungFaktorial(angka);

  print('Faktorial dari $angka adalah $hasil');
}