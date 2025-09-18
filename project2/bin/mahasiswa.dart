import 'dart:io';

void main() {
  List<Map<String, dynamic>> mahasiswaList = [];

  // Input jumlah mahasiswa
  stdout.write('Masukkan jumlah mahasiswa: ');
  int jumlah = int.parse(stdin.readLineSync() ?? '0');

  // Input data
  for (int i = 1; i <= jumlah; i++) {
    stdout.write('Nama mahasiswa ke-$i: ');
    String? nama = stdin.readLineSync();

    stdout.write('Nilai $nama: ');
    int? nilai = int.tryParse(stdin.readLineSync() ?? '');

    if (nama != null && nilai != null) {
      String kategori = tentukanKategori(nilai);
      mahasiswaList.add({
        'nama': nama,
        'nilai': nilai,
        'kategori': kategori,
      });
    } else {
      print('⚠️ Input salah, coba lagi!\n');
      i--; // ulangi input
    }
  }

  // Output hasil
  print('\n=== Daftar Hasil Mahasiswa ===');
  for (var mhs in mahasiswaList) {
    print(
        'Nama: ${mhs['nama']}, Nilai: ${mhs['nilai']}, Kategori: ${mhs['kategori']}');
  }
}

// Tentukan kategori dengan switch
String tentukanKategori(int nilai) {
  switch (nilai ~/ 10) {
    case 10:
    case 9:
    case 8:
      return 'A';
    case 7:
    case 6:
      return 'B';
    default:
      return 'C';
  }
}