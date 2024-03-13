import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //image logo
          Container(
            width: 200, 
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/image.jpg'),
                fit: BoxFit
                    .cover, 
              ),
            ),
          ),
          //label
          Container(),
          //menu items
          Container(
            child: Row(
              children: [
                Container(
                  child: Text('Home'),
                ),
                Container(
                  child: Text('main'),
                ),
                Container(
                  child: Text('Last'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
