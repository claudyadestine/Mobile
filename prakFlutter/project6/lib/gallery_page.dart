import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  final List<String> images = const [
    'assets/images/pic1.png',
    'assets/images/pic2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Galeri Mahasiswa'),
        backgroundColor: const Color(0xFFCE93D8),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(images.length, (index) {
          return Card(
            color: const Color(0xFFE1BEE7),
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(images[index], fit: BoxFit.cover),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '✨ Foto ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6A1B9A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
