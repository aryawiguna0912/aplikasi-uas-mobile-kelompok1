import 'dart:convert';
import 'package:app_produk/err.dart';
import 'package:app_produk/halaman_produk.dart';
import 'package:app_produk/home.dart';
import 'package:app_produk/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          title: const Center(
            child: Text('Penyimpanan Barang')),
            backgroundColor: Colors.deepOrange,
      ),
      //body: Text('Data'),
      body: const MyProject001(),
      ),
    );
  }
}


class MyProject001 extends StatefulWidget {
  const MyProject001({Key? key}) : super(key: key);

  @override
  State<MyProject001> createState() => _MyProject001State();
}

class _MyProject001State extends State<MyProject001> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> _login() async{
    var url = Uri.parse("https://aryamobileapi.000webhostapp.com/api_produk/login.php");
    var response = await http.post(url,body: {"username":usernameController.text, "password":passwordController.text});

    var datauser = jsonDecode(response.body);

    if(datauser !=''){
      print('Login Success');

        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => Home(),
          ),
        );

    }else{
      //print('Login Failed');
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => ErrorPage(),
          ),
        );

    }

  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

SizedBox(height: 30),
const Image(
            height: 100,
            width: 100,
            image: NetworkImage("https://st3.depositphotos.com/11956860/18745/v/450/depositphotos_187453548-stock-illustration-icon-logo-goods-package-management.jpg"),),
          const Text('Demi Keamanan Silahkan Masuk Terlebih Dahulu !'),
SizedBox(height: 30),


          Container(
            padding: const EdgeInsets.all(8),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                
              ),
              
            ),
          ),


          Container(
            padding: const EdgeInsets.all(8),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password'
              ),
            ),
          ),

          ElevatedButton(onPressed: (){
              _login();
          }, child: const Text('MASUK')),
          SizedBox(height: 20),
          TextButton(
             child: Text("Belum Punya Akun ? Daftar Sekarang!",
               style: TextStyle(color: Colors.blue),),
             onPressed: () {
               Navigator.push(
                   context, MaterialPageRoute(builder: (context) => SignUp()));
             },
           )

        ],
      ),
    );
  }
}