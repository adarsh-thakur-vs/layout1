import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class Footer extends StatelessWidget {
//   const Footer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return body: Center(
//           child: Container(
//             child: Column(
//               children: [FooterSimple()],
//             ),
//           ),
//       );
//   }
// }

class FooterSimple extends StatefulWidget {
  const FooterSimple({Key? key}) : super(key: key);

  @override
  State<FooterSimple> createState() => _FooterSimpleState();
}

class _FooterSimpleState extends State<FooterSimple> {
  int selectedText = 0;
  Color containerColor = Color.fromARGB(255, 77, 0, 209);
  Color baseContainerColor = Color.fromARGB(255, 0, 0, 0);
  bool isContainerColorBackground = true;
  bool isBaseContainerColorBackground = true;
  late double _deviceHeight;
  late double _devicewidth;

  //globalvariables
  late bool isBold = false;
  late bool isItalic = false;
  late bool isUnderline = false;
  double fontSize = 20.0;

  //titlevariables
  final TextEditingController _footerTitleController =
      TextEditingController(text: "FOOTER TITLE");
  Color titleColor = Colors.white;
  double titleFontSize = 20.0;
  late bool isFooterTitleBold = false;
  late bool isFooterTitleItalic = false;
  late bool isFooterTitleUnderline = false;

  //basefootervariables
  final TextEditingController _basefooterController =
      TextEditingController(text: "Made With Love ");
  Color baseFooterColor = Color.fromARGB(255, 255, 255, 255);
  double baseFooterFontSize = 20.0;
  late bool baseFooterBold = false;
  late bool baseFooterItalic = false;
  late bool baseFooterUnderline = false;

  //menu1
  final TextEditingController _menu1Controller =
      TextEditingController(text: "Menu 1");
  Color menu1Color = Colors.white;
  double menu1FontSize = 20.0;
  late bool ismenu1Bold = false;
  late bool ismenu1Italic = false;
  late bool ismenu1Underline = false;

  //menu2
  final TextEditingController _menu2Controller =
      TextEditingController(text: "Menu 2");
  Color menu2Color = Colors.white;
  double menu2FontSize = 20.0;
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

  //menu4
  final TextEditingController _menu4Controller =
      TextEditingController(text: "Menu 4");
  Color menu4Color = Colors.white;
  double menu4FontSize = 20.0;
  late bool ismenu4Bold = false;
  late bool ismenu4Italic = false;
  late bool ismenu4Underline = false;

  //menu5
  final TextEditingController _menu5Controller =
      TextEditingController(text: "Menu 5");
  Color menu5Color = Colors.white;
  double menu5FontSize = 20.0;
  late bool ismenu5Bold = false;
  late bool ismenu5Italic = false;
  late bool ismenu5Underline = false;

  //contentvariables
  final TextEditingController _contentTitleController = TextEditingController(
      text:
          "Flutter is a popular open-source UI software development kit created by Google. It is used to develop applications for mobile, web, and desktop platforms from a single codebase. Flutter uses the Dart programming language, which is also developed by Google. One of the key features of Flutter is its fast development cycle and hot reload capability, allowing developers to see the changes they make to the code almost instantly on their device or emulator. Flutter provides a rich set of customizable widgets that enable developers to create beautiful and highly responsive user interfaces. With its growing community and extensive documentation, Flutter has become a preferred choice for building cross-platform applications.");
  Color contentColor = Colors.white;
  double contentFontSize = 15.0;
  late bool isContentBold = false;
  late bool isContentItalic = false;
  late bool isContentUnderline = false;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return sectionContainer();
                },
              );
            },
            child: Container(
              color: isContainerColorBackground ? containerColor : null,
              height: _deviceHeight * 0.5,
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: _deviceHeight * 0.07,
                            width: _devicewidth,
                            alignment: Alignment.center, // Align text to center
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showEditDialog(_footerTitleController);
                                  isBold = isFooterTitleBold;
                                  isUnderline = isFooterTitleUnderline;
                                  isItalic = isFooterTitleItalic;
                                  fontSize = titleFontSize;
                                  selectedText = 1;
                                });
                              },
                              child: Text(
                                _footerTitleController.text,
                                style: TextStyle(
                                  fontSize: titleFontSize,
                                  color: titleColor,
                                  fontWeight: isFooterTitleBold
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontStyle: isFooterTitleItalic
                                      ? FontStyle.italic
                                      : FontStyle.normal,
                                  decoration: isFooterTitleUnderline
                                      ? TextDecoration.underline
                                      : TextDecoration.none,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ],
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
                              selectedText = 2;
                            });
                          },
                          child: Text(
                            _contentTitleController.text,
                            style: TextStyle(
                              fontSize: contentFontSize,
                              color: contentColor,
                              fontWeight: isContentBold
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontStyle: isContentItalic
                                  ? FontStyle.italic
                                  : FontStyle.normal,
                              decoration: isContentUnderline
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            ),
                            maxLines: 4,
                            textAlign: TextAlign
                                .center, // Align text to center horizontally
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
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
                  //last Row
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    //menu1
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: _deviceHeight * 0.1,
                        width: _devicewidth * 0.1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              showEditDialog(_menu1Controller);
                              fontSize = menu1FontSize;
                              isBold = ismenu1Bold;
                              isUnderline = ismenu1Underline;
                              isItalic = ismenu1Italic;
                              selectedText = 4;
                            });
                          },
                          child: Text(
                            _menu1Controller.text,
                            style: TextStyle(
                              fontSize: menu1FontSize,
                              color: menu1Color,
                              fontWeight: ismenu1Bold
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontStyle: ismenu1Italic
                                  ? FontStyle.italic
                                  : FontStyle.normal,
                              decoration: ismenu1Underline
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            ),
                            maxLines: 1,
                            textAlign: TextAlign
                                .center, // Align text to center horizontally
                          ),
                        ),
                      ),
                      //menu2
                      Container(
                        height: _deviceHeight * 0.1,
                        width: _devicewidth * 0.1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              showEditDialog(_menu2Controller);
                              fontSize = menu2FontSize;
                              isBold = ismenu2Bold;
                              isUnderline = ismenu2Underline;
                              isItalic = ismenu2Italic;
                              selectedText = 5;
                            });
                          },
                          child: Text(
                            _menu2Controller.text,
                            style: TextStyle(
                              fontSize: menu2FontSize,
                              color: menu2Color,
                              fontWeight: ismenu2Bold
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontStyle: ismenu2Italic
                                  ? FontStyle.italic
                                  : FontStyle.normal,
                              decoration: ismenu2Underline
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            ),
                            maxLines: 1,
                            textAlign: TextAlign
                                .center, // Align text to center horizontally
                          ),
                        ),
                      ),
                      //menu3
                      Container(
                        height: _deviceHeight * 0.1,
                        width: _devicewidth * 0.1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              showEditDialog(_menu3Controller);
                              fontSize = menu3FontSize;
                              isBold = ismenu3Bold;
                              isUnderline = ismenu3Underline;
                              isItalic = ismenu3Italic;
                              selectedText = 6;
                            });
                          },
                          child: Text(
                            _menu3Controller.text,
                            style: TextStyle(
                              fontSize: menu3FontSize,
                              color: menu3Color,
                              fontWeight: ismenu3Bold
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontStyle: ismenu3Italic
                                  ? FontStyle.italic
                                  : FontStyle.normal,
                              decoration: ismenu3Underline
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            ),
                            maxLines: 1,
                            textAlign: TextAlign
                                .center, // Align text to center horizontally
                          ),
                        ),
                      ),
                      //menu4
                      Container(
                        height: _deviceHeight * 0.1,
                        width: _devicewidth * 0.1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              showEditDialog(_menu5Controller);
                              fontSize = menu5FontSize;
                              isBold = ismenu5Bold;
                              isUnderline = ismenu5Underline;
                              isItalic = ismenu5Italic;
                              selectedText = 7;
                            });
                          },
                          child: Text(
                            _menu4Controller.text,
                            style: TextStyle(
                              fontSize: menu5FontSize,
                              color: menu5Color,
                              fontWeight: ismenu5Bold
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontStyle: ismenu5Italic
                                  ? FontStyle.italic
                                  : FontStyle.normal,
                              decoration: ismenu5Underline
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            ),
                            maxLines: 1,
                            textAlign: TextAlign
                                .center, // Align text to center horizontally
                          ),
                        ),
                      ), //menu5
                      Container(
                        height: _deviceHeight * 0.1,
                        width: _devicewidth * 0.1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              showEditDialog(_menu5Controller);
                              fontSize = menu5FontSize;
                              isBold = ismenu5Bold;
                              isUnderline = ismenu5Underline;
                              isItalic = ismenu5Italic;
                              selectedText = 8;
                            });
                          },
                          child: Text(
                            _menu5Controller.text,
                            style: TextStyle(
                              fontSize: menu5FontSize,
                              color: menu5Color,
                              fontWeight: ismenu5Bold
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontStyle: ismenu5Italic
                                  ? FontStyle.italic
                                  : FontStyle.normal,
                              decoration: ismenu5Underline
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            ),
                            maxLines: 1,
                            textAlign: TextAlign
                                .center, // Align text to center horizontally
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),

        ///Strip Section
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return baseContainer();
              },
            );
          },
          child: Container(
            color: isBaseContainerColorBackground ? baseContainerColor : null,
            height: _deviceHeight * 0.05,
            width: _devicewidth,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  showEditDialog(_basefooterController);
                  isBold = baseFooterBold;
                  isUnderline = baseFooterUnderline;
                  isItalic = baseFooterItalic;
                  fontSize = baseFooterFontSize;
                  selectedText = 3;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Align children to center horizontally
                children: [
                  Text(
                    _basefooterController.text,
                    style: TextStyle(
                      fontSize: baseFooterFontSize,
                      color: baseFooterColor,
                      fontWeight:
                          baseFooterBold ? FontWeight.bold : FontWeight.normal,
                      fontStyle: baseFooterItalic
                          ? FontStyle.italic
                          : FontStyle.normal,
                      decoration: baseFooterUnderline
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                    maxLines: 1,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

//background color changer
  Widget sectionContainer() {
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
                    containerColor = color;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget baseContainer() {
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
                    baseContainerColor = color;
                  });
                },
              ),
            ),
          ],
        ),
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
                                    titleFontSize = fontSize;
                                    break;
                                  case 2:
                                    contentFontSize = fontSize;
                                    break;
                                  case 3:
                                    baseFooterFontSize = fontSize;
                                    break;
                                  case 4:
                                    menu1FontSize = fontSize;
                                    break;
                                  case 5:
                                    menu2FontSize = fontSize;
                                    break;
                                  case 6:
                                    menu3FontSize = fontSize;
                                    break;
                                  case 7:
                                    menu4FontSize = fontSize;
                                    break;
                                  case 8:
                                    menu5FontSize = fontSize;
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
                                isFooterTitleBold = newValue;
                                break;
                              case 2:
                                isContentBold = newValue;
                                break;
                              case 3:
                                baseFooterBold = newValue;
                                break;
                              case 4:
                                ismenu1Bold = newValue;
                                break;
                              case 5:
                                ismenu2Bold = newValue;
                                break;
                              case 6:
                                ismenu3Bold = newValue;
                                break;
                              case 7:
                                ismenu4Bold = newValue;
                                break;
                              case 8:
                                ismenu5Bold = newValue;
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
                                isFooterTitleItalic = newValue;
                                break;
                              case 2:
                                isContentItalic = newValue;
                                break;
                              case 3:
                                baseFooterItalic = newValue;
                                break;
                              case 4:
                                ismenu1Italic = newValue;
                                break;
                              case 5:
                                ismenu2Italic = newValue;
                                break;
                              case 6:
                                ismenu3Italic = newValue;
                                break;
                              case 7:
                                ismenu4Italic = newValue;
                                break;
                              case 8:
                                ismenu5Italic = newValue;
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
                        title: Text('Underline:'),
                        value: isUnderline,
                        onChanged: (bool? newValue) {
                          isUnderline = newValue!;
                          setState(() {
                            switch (selectedText) {
                              case 1:
                                isFooterTitleUnderline = newValue;
                                break;
                              case 2:
                                isContentUnderline = newValue;
                                break;
                              case 3:
                                baseFooterUnderline = newValue;
                                break;
                              case 4:
                                ismenu1Underline = newValue;
                                break;
                              case 5:
                                ismenu2Underline = newValue;
                                break;
                              case 6:
                                ismenu3Underline = newValue;
                                break;
                              case 7:
                                ismenu4Underline = newValue;
                                break;
                              case 8:
                                ismenu5Underline = newValue;
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
                              titleColor = color;
                              break;
                            case 2:
                              contentColor = color;
                              break;
                            case 3:
                              baseFooterColor = color;
                              break;
                            case 4:
                              menu1Color = color;
                              break;
                            case 5:
                              menu2Color = color;
                              break;
                            case 6:
                              menu3Color = color;
                              break;
                            case 7:
                              menu4Color = color;
                              break;
                            case 8:
                              menu5Color = color;
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
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Footer Icons Example'),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.facebook,
//                 size: 50,
//                 color: Colors.blue,
//               ),
//               SizedBox(width: 20),
//               Icon(
//                 Icons.face,
//                 size: 50,
//                 color: Colors.lightBlue,
//               ),
//               SizedBox(width: 20),
//               Icon(
//                 Icons.face_2_outlined,
//                 size: 50,
//                 color: Colors.pink,
//               ),
//               SizedBox(width: 20),
//               Icon(
//                 Icons.twelve_mp_outlined,
//                 size: 50,
//                 color: Colors.red,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
