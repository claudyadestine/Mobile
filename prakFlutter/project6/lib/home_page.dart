import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5), // ungu pastel
      appBar: AppBar(
        backgroundColor: const Color(0xFFCE93D8),
        leading: const Icon(
          Icons.home, 
          color: Colors.white,
        ),
        title: const Text(
          'Halaman Utama',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.school, size: 80, color: Color(0xFFBA68C8)),
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang👋',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6A1B9A),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Ayo lihat profil dan galeri kamu di bawah ini.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF8E24AA),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              icon: const Icon(Icons.person),
              label: const Text('Profil Mahasiswa'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFBA68C8),
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
