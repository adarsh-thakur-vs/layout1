import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FontAwesome Icons'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.facebook,
                size: 50,
                color: Colors.blue,
              ),
              SizedBox(width: 20),
              FaIcon(
                FontAwesomeIcons.linkedin,
                size: 50,
                color: Colors.lightBlue,
              ),
              SizedBox(width: 20),
              FaIcon(
                FontAwesomeIcons.twitter,
                size: 50,
                color: Colors.pink,
              ),
              SizedBox(width: 20),
              FaIcon(
                FontAwesomeIcons.youtube,
                size: 50,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
