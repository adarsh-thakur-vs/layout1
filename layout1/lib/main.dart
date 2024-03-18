import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:layout1/templates/template01/footer_simple.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              children: [FooterSimple()],
            ),
          ),
        ),
      ),
    );
  }
}
