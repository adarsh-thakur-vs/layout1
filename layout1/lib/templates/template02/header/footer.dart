// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Footer extends StatefulWidget {
  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  late String email;
  late String phoneNo;
  late String copyrightText;
  late Color contactContentColor;
  late Color contactUsColor;
  late Color followUsColor;
  late Color containerColor;
  late Color copyrightTextColor;
  @override
  void initState() {
    email = "contact@examle.com";
    phoneNo = "+918888888888";
    copyrightText="@2024, Company Name , All Rights Reserved";
    contactContentColor = Colors.black;
    contactUsColor = Colors.black;
    followUsColor = Colors.black;
    containerColor = Colors.grey;
    copyrightTextColor=Colors.black;
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return colorEdit(1);
          },
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
        color: containerColor, // Background color of the footer
        padding: EdgeInsets.symmetric(vertical: 20.0),
        // ignore: prefer_const_constructors
        child: Padding(
          padding: EdgeInsets.only(left: 160, right: 160),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (() {
                      showDialog(context: context, builder: (BuildContext context){
                          return colorEdit(2);
                      },);
                    }),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: contactUsColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return contentEdit(1);
                        },
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          email,
                          style: TextStyle(
                            color: contactContentColor,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          phoneNo,
                          style: TextStyle(
                            color: contactContentColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return contentEdit(2);
                        },
                      );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Center(
                      child: Text(copyrightText,
                      maxLines: 2,
                      style: TextStyle(
                        color:copyrightTextColor,
                        fontSize: 20,
                      ),),
                    ),
                  ),
                ),
              ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (() {
                      showDialog(context: context, builder: (BuildContext context){
                        return colorEdit(4);
                      });
                    }),
                    child: Text(
                      'Follow Us',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: followUsColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      // ignore: prefer_const_constructors
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue, // Specify the color here
                        size: 24,
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.blue, // Specify the color here
                        size: 24,
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue, // Specify the color here
                        size: 24,
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.red, // Specify the color here
                        size: 24,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contentEdit(int index) {
    return AlertDialog(
      title: const Text('Edit Text'),
      content: Container(
        child: index==1?Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: email,
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: phoneNo,
              ),
              onChanged: (value) {
                setState(() {
                  phoneNo = value;
                });
              },
            ),
            colorEdit(3),
          ],
        ):Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: copyrightText,
              ),
              onChanged: (value) {
                setState(() {
                  copyrightText = value;
                });
              },
            ),
            colorEdit(5),
          ],
        ),
      ),
    );
  }

  Widget colorEdit(int index) {
    return AlertDialog(
      title: const Text('Select Color'),
      content: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: MaterialPicker(
                pickerColor: Colors.black,
                onColorChanged: (Color color) {
                  setState(() {
                    if(index==1){
                      containerColor=color;
                    }else if(index==2){
                      contactUsColor=color;
                    }
                    else if(index==3){
                      contactContentColor = color;
                    }
                    else if(index==4){
                      followUsColor=color;
                    }
                    else if(index==5){
                      copyrightTextColor=color;
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
