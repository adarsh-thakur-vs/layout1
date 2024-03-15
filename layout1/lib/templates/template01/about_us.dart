import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final TextEditingController _urlController = TextEditingController();
  double _width = 0.0;
  double _height = 0.0;
  String? imageUrl;
  double iconSize = 45;
  double vspace = 10;
  String descriptionText = "Add your description here";
  Color descriptionColor = Colors.black;
  Color containerColor = Color.fromARGB(255, 18, 34, 215);
  Color container1Color = Color.fromARGB(255, 18, 34, 215);
  Color container2Color =  Color.fromARGB(255, 211, 212, 219);
  Color aboutusColor =  Colors.blueAccent;
  bool isAboutcolored= true;
  int containerNum = 0;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _showDescriptionDialog();
            });
          },
          child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              "About Us",
              style: TextStyle(
                color:aboutusColor,
                decoration: TextDecoration.none,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(children: [
                SizedBox(
                  height: vspace,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        containerNum=1;
                        return sectionContainer();
                      },
                    );
                  },
                  child: Container(
                    width: _width * 0.4,
                    height: _height * 0.5,
                    margin: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      color: container1Color,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 33, 27, 27).withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                imageUrl = null;
                              });
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return UrlInputDialog();
                                },
                              );
                            },
                            child: Visibility(
                              visible: imageUrl == null,
                              child: Container(
                                child: Icon(
                                  Icons.add_a_photo_outlined,
                                  size: iconSize,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          if (imageUrl != null)
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return UrlInputDialog();
                                  },
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width *
                                    0.2, // Adjust height as needed
                                child: Image.network(
                                  imageUrl!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    containerNum=2;
                    return sectionContainer();
                  },
                );
              },
              child: Container(
                width: _width * 0.4,
                height: _height * 0.5,
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color:container2Color,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 33, 27, 27).withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    _showDescriptionDialog();
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        descriptionText,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: descriptionColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget UrlInputDialog() {
    return AlertDialog(
      title: Text('Enter URL'),
      content: SizedBox(
        width: 100,
        height: 150,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _urlController,
              decoration: InputDecoration(labelText: 'URL'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String url = _urlController.text;
                setState(() {
                  imageUrl = url;
                });

                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

//container background
  Widget sectionContainer() {
    return AlertDialog(
      title: Text('Select Color of Container'),
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
                    if(containerNum==1)
                    {
                    container1Color = color;
                    }
                    else if(containerNum==2)
                    {
                      container2Color=color;
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

  void _showDescriptionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Color pickerColor = descriptionColor;
        return AlertDialog(
          title: Text('Edit Description'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        descriptionText = text;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Description',
                    ),
                    controller: TextEditingController(text: descriptionText),
                  ),
                ),
                SizedBox(height: 10),
                Text('Select Color:'),
                SizedBox(
                  height: 120,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ColorPicker(
                      pickerColor: pickerColor,
                      onColorChanged: (color) {
                        setState(() {
                          pickerColor = color;
                        });
                      },
                      showLabel: true,
                      pickerAreaHeightPercent: 0.8,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      aboutusColor = pickerColor;
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Apply'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
