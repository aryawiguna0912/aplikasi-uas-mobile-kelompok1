import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Terjadi Kesalahan !'),
        backgroundColor: Colors.red,
      ),
      body:Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        
SizedBox(height: 30),
const Image(
            height: 350,
            width: 350,
            image: NetworkImage("https://media.istockphoto.com/id/1152189152/vector/red-alert-icon.jpg?s=612x612&w=0&k=20&c=Kw_-i314F4cxgn2hmakp-88-O45FSx62c6r-OzKYMw4="),),
          const Text('Username Dan Password Tidak Sesuai !'),
        ],
      )
    );
  }
}