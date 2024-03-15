import 'package:flutter/material.dart';

import 'package:layout1/templates/template01/about_us.dart';
import 'package:layout1/templates/template01/section1.dart';
import 'package:layout1/templates/template01/header.dart';
import 'package:layout1/templates/template01/testimonial.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

   
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Header(),
    );
  }
}


