import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class testimonials extends StatefulWidget{
  @override
  State<testimonials> createState() => _testimonialsState();
}

class _testimonialsState extends State<testimonials> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
        height: 400,
        width: MediaQuery.of(context).size.width,
        child: Center(child: Text("Main Section")),
    );
  }
}