import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class header2 extends StatefulWidget {
  const header2({super.key});

  @override
  State<header2> createState() => _header2State();
}

// ignore: camel_case_types
class _header2State extends State<header2> {
  //image
  late String imageUrl;
  late String defaultimageUrl;
  bool isBlurActive = false;
  late double iconSize;
  late double radius;
  final TextEditingController _urlController = TextEditingController();

  @override
  void initState() {
    super.initState();
    iconSize = 10;
    radius = 10;
    imageUrl ='https://cdn3.iconfinder.com/data/icons/design-n-code/100/272127c4-8d19-4bd3-bd22-2b75ce94ccb4-512.png';
    defaultimageUrl='https://cdn3.iconfinder.com/data/icons/design-n-code/100/272127c4-8d19-4bd3-bd22-2b75ce94ccb4-512.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1,
      width: MediaQuery.of(context).size.width*0.2,
      decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey, // Adjust border color
        width: 1.0, // Adjust border width
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // Adjust shadow color and opacity
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3), // Adjust shadow offset
        ),
      ],
    ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                imageUrl = '';
              });
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return UrlInputDialog();
                },
              );
            },
            child: Visibility(
              visible: imageUrl == '',
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.07,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 223, 210, 210)
                        .withOpacity(0.5), // Adjust shadow color and opacity
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  )
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(defaultimageUrl),
                ),
              ),
            ),
          ),
          if (imageUrl != '')
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return UrlInputDialog();
                  },
                );
              },
              // child: Padding(
              // padding: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  height: MediaQuery.of(context).size.width * 0.05,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(radius),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      color: isBlurActive
                          ? const Color.fromRGBO(206, 172, 172, 0.498)
                          : null,
                      colorBlendMode: BlendMode.dstATop,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget UrlInputDialog() {
    return AlertDialog(
      title: const Text('Image URL'),
      content: SizedBox(
        width: 300,
        height: 250,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _urlController,
              decoration: const InputDecoration(labelText: 'URL'),
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Enable Blur'),
                      Switch(
                        onChanged: (value) {
                          setState(() {
                            isBlurActive = value;
                          });
                        },
                        value: isBlurActive,
                      ),
                    ]),
                Row(
                  children: [
                    Text('Border Radius'),
                    Slider(
                      value: radius,
                      min: 0,
                      max: 200,
                      onChanged: (newValue) {
                        setState(() {
                          radius = newValue;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                String url = _urlController.text;
                setState(() {
                  imageUrl = url;
                });

                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
