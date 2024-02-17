import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          title: const Center(
            child: Text('Tentang Aplikasi')),
            backgroundColor: Colors.deepOrange,
      ),
      body: Padding(padding: const EdgeInsets.all(30),
      child: Card(elevation: 12,
      child: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Aplikasi Pendataan Barang'),
          subtitle: Text('Versi 1.0\nAplikasi Ini digunakan untuk mengelola data barang'),
        ),
        ListTile(
          title: Text('Dibuat Oleh Kelompok 1'),
          subtitle: Text('Arya Wiguna | Novi Sulistiani | Linda Amelia'),
        ),
        ListTile(
          title: Text('Pemrograman Mobile 2'),
          subtitle: Text('Copyright@2024 | Teknik Informatika | STTB Bandung'),
        ),
      ],
      ),
      ),
      ),
      ),
      
      
      ),
    );
  
}
}