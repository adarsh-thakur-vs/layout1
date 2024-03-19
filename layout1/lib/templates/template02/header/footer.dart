// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.2,
      color: const Color.fromARGB(255, 139, 133, 133), // Background color of the footer
      padding: EdgeInsets.symmetric(vertical: 20.0),
      // ignore: prefer_const_constructors
      child: Padding(
        padding: EdgeInsets.only(left: 160,right: 160),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Email: contact@example.com',
                ),
                Text(
                  'Phone: +1234567890',
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Follow Us',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    // ignore: prefer_const_constructors
                    Icon(Icons.facebook),
                    SizedBox(width: 10.0),
                    Icon(Icons.facebook),
                    SizedBox(width: 10.0),
                    Icon(Icons.facebook),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

