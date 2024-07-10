import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main (){
  runApp(const Quizz());
}
class Quizz extends StatelessWidget {
  const Quizz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.amberAccent,
        title: const Text("Hamro Quiz",style: TextStyle(fontFamily: 'Times New Roman',fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,),
        body: const Login(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
