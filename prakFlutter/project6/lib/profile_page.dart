import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  final List<String> mataKuliah = const [
    '📦 Manajemen Rantai Pasok',
    '🧪 Metodologi Penelitian',
    '🔍 Audit Sistem Informasi',
    '🗂️ Perencanaan Sumber Daya',
    '✅ Penjaminan Mutu Perangkat Lunak',
    '📱 Pemrograman Mobile',
    '📊 Manajemen Proyek Sistem Informasi',
    '🦺 Keselamatan dan Kesehatan Kerja',
    '🧠 Kecerdasan Bisnis',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Profil Mahasiswa'),
        backgroundColor: const Color(0xFFCE93D8),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Bagian Profil
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  backgroundColor: Color(0xFFE1BEE7),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 8),
                    Text(
                      'Claudya Destine',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6A1B9A),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      ' D-IV Sistem Informasi Bisnis',
                      style: TextStyle(color: Color(0xFF8E24AA)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 🔹 Judul daftar mata kuliah
            const Center(
            child: Text(
              ' Daftar Mata Kuliah Semester 5',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF8E24AA),
              ),
            ),
            ),
            const SizedBox(height: 10),

            // 🔹 Box daftar mata kuliah
            Expanded(
              child: ListView.builder(
                itemCount: mataKuliah.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                    shadowColor: Colors.purple.withOpacity(0.2),
                    color: const Color(0xFFF3E5F5),
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      title: Text(
                        mataKuliah[index],
                        style: const TextStyle(
                          color: Color(0xFF6A1B9A),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // 🔹 Tombol Galeri
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 10.0),
              child: Center(
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/gallery'),
                  icon: const Icon(Icons.photo_album),
                  label: const Text(' Lihat Galeri'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFBA68C8),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
