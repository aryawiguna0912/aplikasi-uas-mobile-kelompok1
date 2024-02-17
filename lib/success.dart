import 'package:app_produk/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Berhasil !'),
        backgroundColor: Colors.green,
      ),
      body:Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        
SizedBox(height: 30),
const Image(
            height: 350,
            width: 350,
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCHg5DHXAFi0gd7RZ5SNkQ3v0uiHEq_EZ41mRtZrWUbzabKpUykYKEsMc53LDranzY1vY&usqp=CAU"),),
          const Text('Silahkan Login Ulang !'),
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
      )
    );
  }
}