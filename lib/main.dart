import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posttest 1',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Home(title: 'Posttest 1 Muhammad Rizky Hari Nugroho'),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posttest 1 Muhammad Rizky Hari Nugroho'),
      ),
      backgroundColor: Color.fromARGB(255, 65, 50, 50),
      body: Center(
        child: Container(
          width: lebar / 2,
          height: panjang,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(153, 226, 26, 26),
                  Color.fromARGB(31, 146, 146, 143),
                ],
              ),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 10,
                color: Color.fromARGB(255, 148, 9, 9),
              )),
          child: const Center(
            child: Text(
              "I-Mobile",
              style: TextStyle(
                  color: Color.fromARGB(255, 201, 181, 181),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal),
            ),
          ),
        ),
      ),
    );
  }
}
