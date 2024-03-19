import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  late double _deviceHeight;
  late double _devicewidth;

  //globalvariables
  late bool isBold = false;
  late bool isItalic = false;
  late bool isUnderline = false;
  double fontSize = 20.0;
  Color dividerColor = Colors.grey;
  Color containerColor = Color.fromARGB(255, 77, 0, 209);

  //menu1
  final TextEditingController _menu1Controller =
      TextEditingController(text: "Build Faster");
  Color menu1Color = Colors.white;
  double menu1FontSize = 60.0;
  late bool ismenu1Bold = false;
  late bool ismenu1Italic = false;
  late bool ismenu1Underline = false;

  //menu2
  final TextEditingController _menu2Controller =
      TextEditingController(text: "Build Smarter");
  Color menu2Color = Colors.white;
  double menu2FontSize = 60.0;
  late bool ismenu2Bold = false;
  late bool ismenu2Italic = false;
  late bool ismenu2Underline = false;

  //menu3
  final TextEditingController _menu3Controller =
      TextEditingController(text: "Menu 3");
  Color menu3Color = Colors.white;
  double menu3FontSize = 20.0;
  late bool ismenu3Bold = false;
  late bool ismenu3Italic = false;
  late bool ismenu3Underline = false;

  final TextEditingController _footerTitleController =
      TextEditingController(text: "FOOTER TITLE");
  Color titleColor = Colors.white;
  double titleFontSize = 20.0;
  late bool isFooterTitleBold = false;
  late bool isFooterTitleItalic = false;
  late bool isFooterTitleUnderline = false;

  int selectedText = 0;

  //   //contentvariables
  final TextEditingController _contentTitleController = TextEditingController(
      text:
          "Flutter is a popular open-source UI software development kit created by Google. It is used to develop applications for mobile, web, and desktop platforms from a single codebase. Flutter uses the Dart programming language, which is also developed by Google. One of the key features of Flutter is its fast development cycle and hot reload capability, allowing developers to see the changes they make to the code almost instantly on their device or emulator. Flutter provides a rich set of customizable widgets that enable developers to create beautiful and highly responsive user interfaces. With its growing community and extensive documentation, Flutter has become a preferred choice for building cross-platform applications.");
  Color contentColor = Colors.white;
  double contentFontSize = 15.0;
  late bool isContentBold = false;
  late bool isContentItalic = false;
  late bool isContentUnderline = false;

  String? imageUrl = 'https://picsum.photos/1200/800/';
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Container(
      height: _deviceHeight * 0.70,
      width: _devicewidth * 1,
      child: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            height: _deviceHeight * 0.70,
            width: _devicewidth * 1,
            child: GestureDetector(
              onTap: () {
                ImageUpdater();
                setState(() {});
              },
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Image(
                  image: NetworkImage(imageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showEditDialog(_menu1Controller);
                        fontSize = menu1FontSize;
                        isBold = ismenu1Bold;
                        isUnderline = ismenu1Underline;
                        isItalic = ismenu1Italic;
                        selectedText = 1;
                      });
                    },
                    child: Text(
                      _menu1Controller.text,
                      style: TextStyle(
                        fontSize: menu1FontSize,
                        color: menu1Color,
                        fontWeight:
                            ismenu1Bold ? FontWeight.bold : FontWeight.normal,
                        fontStyle:
                            ismenu1Italic ? FontStyle.italic : FontStyle.normal,
                        decoration: ismenu1Underline
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                      maxLines: 1,
                      textAlign:
                          TextAlign.center, // Align text to center horizontally
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showEditDialog(_menu2Controller);
                        fontSize = menu2FontSize;
                        isBold = ismenu2Bold;
                        isUnderline = ismenu2Underline;
                        isItalic = ismenu2Italic;
                        selectedText = 2;
                      });
                    },
                    child: Text(
                      _menu2Controller.text,
                      style: TextStyle(
                        fontSize: menu2FontSize,
                        color: menu2Color,
                        fontWeight:
                            ismenu2Bold ? FontWeight.bold : FontWeight.normal,
                        fontStyle:
                            ismenu2Italic ? FontStyle.italic : FontStyle.normal,
                        decoration: ismenu2Underline
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                      maxLines: 1,
                      textAlign:
                          TextAlign.center, // Align text to center horizontally
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("object");
                    dividerColorPicker();
                    setState(() {});
                  },
                  child: SizedBox(
                    height: 5, // Adjust the height of the divider as needed
                    child: Container(
                      width: 1000, // Adjust the width of the divider as needed
                      decoration: BoxDecoration(
                        color: dividerColor, // Choose the color of the divider
                        borderRadius: BorderRadius.circular(
                            5), // Add border radius for a rounded look
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: _deviceHeight * 0.2,
                  width: _devicewidth * 0.7,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showEditDialog(_contentTitleController);
                        fontSize = contentFontSize;
                        isBold = isContentBold;
                        isUnderline = isContentUnderline;
                        isItalic = isContentItalic;
                        selectedText = 3;
                      });
                    },
                    child: Text(
                      _contentTitleController.text,
                      style: TextStyle(
                        fontSize: contentFontSize,
                        color: contentColor,
                        fontWeight:
                            isContentBold ? FontWeight.bold : FontWeight.normal,
                        fontStyle: isContentItalic
                            ? FontStyle.italic
                            : FontStyle.normal,
                        decoration: isContentUnderline
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                      maxLines: 4,
                      textAlign:
                          TextAlign.center, // Align text to center horizontally
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //editDialog
  void showEditDialog(TextEditingController controller) {
    TextEditingController textEditingController =
        TextEditingController(text: controller.text);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Edit'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: textEditingController,
                    decoration: const InputDecoration(hintText: "Text"),
                    onChanged: (text) {
                      setState(() {
                        controller.text = textEditingController.text;
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return Column(
                        children: [
                          Text('Text Size: $fontSize'),
                          Slider(
                            value: fontSize,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (newValue) {
                              setState(() {
                                fontSize = newValue;
                                switch (selectedText) {
                                  case 1:
                                    menu1FontSize = fontSize;
                                    break;
                                  case 2:
                                    menu2FontSize = fontSize;
                                    break;
                                  case 3:
                                    contentFontSize = fontSize;
                                    break;

                                  // Add other cases if needed
                                }
                              });
                            },
                          ),
                        ],
                      );
                    },
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return SwitchListTile(
                        title: Text('Bold:'),
                        value: isBold,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isBold = newValue!;
                            switch (selectedText) {
                              case 1:
                                ismenu1Bold = newValue;
                                break;
                              case 2:
                                ismenu2Bold = newValue;
                                break;
                              case 3:
                                isContentBold = newValue;
                                break;

                              default:
                                // Handle other cases if needed
                                break;
                            }
                          });
                        },
                      );
                    },
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return SwitchListTile(
                        title: Text('Italic:'),
                        value: isItalic,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isItalic = newValue!;
                            switch (selectedText) {
                              case 1:
                                ismenu1Italic = newValue;
                                break;
                              case 2:
                                ismenu2Italic = newValue;
                                break;
                              case 3:
                                isContentItalic = newValue;
                                break;

                              // Handle other cases if needed
                            }
                          });
                        },
                      );
                    },
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return SwitchListTile(
                        title: Text('Underline:'),
                        value: isUnderline,
                        onChanged: (bool? newValue) {
                          isUnderline = newValue!;
                          setState(() {
                            switch (selectedText) {
                              case 1:
                                ismenu1Underline = newValue;
                                break;
                              case 2:
                                ismenu2Underline = newValue;
                                break;
                              case 3:
                                isContentUnderline = newValue;
                                break;

                              default:
                                // Handle other cases if needed
                                break;
                            }
                          });
                        },
                      );
                    },
                  ),
                  Text('Select Color of Border:'),
                  SizedBox(
                    height: 150,
                    child: MaterialPicker(
                      pickerColor: titleColor,
                      onColorChanged: (Color color) {
                        setState(() {
                          controller.text =
                              textEditingController.text.toString();
                          switch (selectedText) {
                            case 1:
                              menu1Color = color;
                              break;
                            case 2:
                              menu2Color = color;
                              break;
                            case 3:
                              contentColor = color;
                              break;

                            // Add other cases if needed
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {});
                },
                child: Text('Apply'),
              ),
            ],
          );
        });
  }

  void dividerColorPicker() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Color of Container'),
          content: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: MaterialPicker(
                    pickerColor: containerColor,
                    onColorChanged: (Color color) {
                      setState(() {
                        dividerColor = color;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  //background color changer
  void ImageUpdater() {
    TextEditingController geturl = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Update Image'),
          content: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("URL"),
                TextField(
                  controller: geturl,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        imageUrl = geturl.text;
                      });
                    },
                    child: Text("Set Image"))
              ],
            ),
          ),
        );
      },
    );
  }
}
