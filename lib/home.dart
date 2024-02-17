 import 'package:app_produk/about.dart';
import 'package:app_produk/beranda.dart';
import 'package:app_produk/halaman_produk.dart';
import 'package:flutter/material.dart';

    
    class Home extends StatefulWidget {
      const Home({Key? key}) : super(key: key);
    
      @override
      State<Home> createState() => _HomeState();
    }
    
    class _HomeState extends State<Home> {
    
      //inisialisasi variabel
      int _currentIndex = 0;
      int _pilihanmenu = 0;

      final List<Widget> _children = [
        Beranda(),
        HalamanProduk(),
        About(),
      ];
    

    void _onItemTapped(int index){
      setState(() {
        _pilihanmenu=index;
      });
    }
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          
          body: Center(
            child: _children.elementAt(_pilihanmenu),
          ),

          
          //membuat bottom navigation
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.deepOrange,
            //membuat item navigasi
            items: [
              BottomNavigationBarItem(
                
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.deepOrange
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                label: 'Data Barang'
              ),
              
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Tentang'
              ),
            ],
    
            //currentindex mengikuti baris item bottom navigasi yang diklik
            currentIndex: _pilihanmenu,
            selectedItemColor: Colors.white,
            
            onTap: _onItemTapped
    
          ),
        );
      }
    }