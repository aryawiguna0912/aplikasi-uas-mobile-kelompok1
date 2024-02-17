import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    
     return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          title: const Center(
            child: Text('Selamat Datang !')),
            backgroundColor: Colors.deepOrange,
      ),
     body: Padding(padding: const EdgeInsets.all(30),
      child: Card(elevation: 12,
      child: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text('Aplikasi Pendataan Barang'),
          subtitle: Text('Versi 1.0'),
        ),
        Image(image: NetworkImage('https://www.skunexus.com/hubfs/managing-your-warehouse.png#keepProtocol'),),
        
      ],
      ),
      ),
      ),
      ),
      
      
      ),
    );
  }
}