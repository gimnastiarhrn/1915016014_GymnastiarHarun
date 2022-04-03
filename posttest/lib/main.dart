import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
Widget build(BuildContext context) {
    return MaterialApp( 
      home: Home() 
    );
  }
}

class Home extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text("Posttest 1 Gymnastiar"), 
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
        children: [
          Menupilihan(context, Colors.teal,Colors.black,Colors.blueGrey,"Men Shoes"),
          Menupilihan(context, Colors.black,Colors.teal,Colors.blueGrey,"Women Shoes"),
          Menupilihan(context, Colors.teal,Colors.blueGrey,Colors.black,"Kids Shoes"),
        ]),
      ),
      ); 
  }
  }

  Widget Menupilihan (BuildContext context,Color warna1,Color warna2,Color warna3,String txt) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 4.5,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Text(txt,
        style: const TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white),
        ),
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            warna1,
            warna2,
            warna3,
          ]
        ),
        borderRadius: BorderRadius.circular(30),  
      ),
      );
  }   