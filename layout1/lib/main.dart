import 'package:flutter/material.dart';
import 'package:layout1/templates/template01/about_us.dart';
import 'package:layout1/templates/template01/section1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            ),
        ),
        ),
    );
  }
}


