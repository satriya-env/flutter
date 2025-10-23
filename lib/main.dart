// import 'package:envppb/favwid.dart';
import 'package:envppb/menu.dart';
// import 'package:envppb/objek.dart';
// import 'package:envppb/tes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu()
    );
  }
}
