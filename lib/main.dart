import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutterandgeminiai/home_page.dart';


void main() {
  Gemini.init(apiKey: "AIzaSyDDk5c6Hs_dX2qkTllRyMGm4J18GTvZ8zM");
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

// Stateless adalah interface
// shortcut: stl (untuk stateless), stfl (untuk stateful), kalo buat ngewrap (ngebungkus) kita pake 'ctrl+.', ctrl+p digunakan buat nyari file

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var no = 3; //mendefinisikan variable no

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//       // home: Scaffold(
//       //   floatingActionButton: FloatingActionButton(
//       //     onPressed: () {
//       //       setState(() {
//       //         no++;
//       //       });
//       //     },
//       //     child: Icon(
//       //       Icons.add,
//       //     ),
//       //   ),
//       //   appBar: AppBar(
//       //     title: Text("Flutter Gemini AI"),
//       //     backgroundColor: Colors.purple[100],
//       //   ),
//       //   body: Center(
//       //     child: Text(
//       //       "$no", // memanggil variable no sesuai nilai yang udah didefinisikan pada var no = [input point yang diinginkan]
//       //       style: TextStyle(
//       //         fontSize: 26,
//       //         fontWeight: FontWeight.bold,
//       //       ),
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }
