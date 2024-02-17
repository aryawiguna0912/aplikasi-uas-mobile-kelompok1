

import 'package:app_produk/main.dart';
import 'package:app_produk/success.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class SignUp extends StatefulWidget {
  const SignUp({super.key});


  @override
  State<SignUp> createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();


  Future _simpan() async {
    final respon = await http
        .post(Uri.parse('https://aryamobileapi.000webhostapp.com/api_produk/register.php'), body: {
      'name': name.text,
      'username': username.text,
      'password': password.text,
    });
    if (respon.statusCode == 200) {
      return true;
    }
    return false;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      hintText: 'Nama',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama tidak boleh kosong!";
                    }
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username tidak boleh kosong!";
                    }
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password tidak boleh kosong!";
                    }
                  },
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        _simpan().then((value) {
                          if (value) {
                            final snackBar = SnackBar(
                              content: const Text('Berhasil Daftar Silahkan Masuk Kembali !'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            final snackBar = SnackBar(
                              content: const Text('Gagal ! Username sudah Terdaftar !'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SuccessPage())),);
                      }
                    },
                    child: Text('Daftar')),
                    SizedBox(height: 20),
          TextButton(
             child: Text("Masuk Sekarang!",
               style: TextStyle(color: Colors.blue),),
             onPressed: () {
               Navigator.push(
                   context, MaterialPageRoute(builder: (context) => MyApp()));
             },
           ),
              ],
            ),
          )),
    );
  }
}

