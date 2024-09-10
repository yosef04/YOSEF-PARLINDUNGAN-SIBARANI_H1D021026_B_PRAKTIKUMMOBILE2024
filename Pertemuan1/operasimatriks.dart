import 'dart:io';

void main() {
  void tampilkanMatriks(List<List<int>> matriks) {
    for (var row in matriks) {
      print(row);
    }
  }

  List<List<int>> jumlahMatriks(List<List<int>> a, List<List<int>> b) {
    List<List<int>> hasil = List.generate(a.length, (i) => List.filled(a[0].length, 0));

    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < a[0].length; j++) {
        hasil[i][j] = a[i][j] + b[i][j];
      }
    }

    return hasil;
  }

  List<List<int>> kaliMatriks(List<List<int>> a, List<List<int>> b) {
    int barisA = a.length;
    int kolomA = a[0].length;
    int kolomB = b[0].length;

    List<List<int>> hasil = List.generate(barisA, (i) => List.filled(kolomB, 0));

    for (int i = 0; i < barisA; i++) {
      for (int j = 0; j < kolomB; j++) {
        for (int k = 0; k < kolomA; k++) {
          hasil[i][j] += a[i][k] * b[k][j];
        }
      }
    }

    return hasil;
  }

  List<List<int>> matriksA = [
    [1, 2],
    [3, 4]
  ];

  List<List<int>> matriksB = [
    [5, 6],
    [7, 8]
  ];

  print('Matriks A:');
  tampilkanMatriks(matriksA);

  print('\nMatriks B:');
  tampilkanMatriks(matriksB);

  List<List<int>> hasilJumlah = jumlahMatriks(matriksA, matriksB);
  print('\nHasil Penjumlahan Matriks A dan B:');
  tampilkanMatriks(hasilJumlah);

  List<List<int>> hasilKali = kaliMatriks(matriksA, matriksB);
  print('\nHasil Perkalian Matriks A dan B:');
  tampilkanMatriks(hasilKali);
}