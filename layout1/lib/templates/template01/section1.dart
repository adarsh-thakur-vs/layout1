import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Section1 extends StatefulWidget {
  const Section1({Key? key}) : super(key: key);

  @override
  State<Section1> createState() => _Section1State();
}

class _Section1State extends State<Section1> {
// late Color titleColor;
// late Color subtitleColor;
// late Color descriptionColor;
// late Color containerColor;
// late int selectedRadio;
// late bool isContainerColorBackground;
// late double titleFont;
// late double subtitleFont;
// late double descFont;
// late double iconSize;

  @override
  void initState() {
    super.initState();
    // titleColor=Colors.white;
    // subtitleColor=const Color.fromARGB(255, 25, 145, 87);
    // descriptionColor=Colors.white;
    // containerColor=Color.fromARGB(255, 10, 92, 235);
    // selectedRadio=0;
    // isContainerColorBackground=true;
    // titleFont=35;
    // subtitleFont=55;
    // descFont=14;
    // iconSize=45;
  }

  Color titleColor = Colors.white;
  Color subtitleColor = const Color.fromARGB(255, 25, 145, 87);
  Color descriptionColor = Colors.white;
  Color containerColor = const Color.fromARGB(255, 10, 92, 235);
  int selectedRadio = 0;
  bool isContainerColorBackground = true;
  double titleFont = 35;
  double subtitleFont = 55;
  double descFont = 14;
  double iconSize = 45;
  int selectedText = 0;
  double fontSize = 10.0;
  String temp = "Anmol";
  String? title = 'Elegant Finds Boutique';
  final TextEditingController _titleController =
      TextEditingController(text: 'Elegant Finds Boutique');
  final TextEditingController _subtitleController =
      TextEditingController(text: 'Discover Timeless Style');
  final TextEditingController _contentController = TextEditingController(
    text:
        'Welcome to Elegant Finds Boutique, where sophistication meets substance. Our carefully curated collection brings together a blend of timeless elegance and contemporary flair, offering discerning shoppers a haven of luxury and quality.',
  );
  final TextEditingController _urlController = TextEditingController();
  String? imageUrl;
  bool isBlurActive = false;
  bool isBorderApplied= false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        height: MediaQuery.of(context).size.height * 0.8,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40, right: 20, top: 5, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showEditDialog(_titleController);
                          selectedText = 1;
                        });
                      },
                      child: Text(
                        _titleController.text,
                        style: TextStyle(
                          fontSize: titleFont,
                          color: titleColor,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40, right: 20, top: 5, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showEditDialog(_subtitleController);
                          selectedText = 2;
                        });
                      },
                      child: Text(
                        _subtitleController.text,
                        style: TextStyle(
                          fontSize: subtitleFont,
                          color: subtitleColor,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40, right: 20, top: 5, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showEditDialog(_contentController);
                          selectedText = 3;
                        });
                      },
                      child: Text(
                        _contentController.text,
                        style: TextStyle(
                          fontSize: descFont,
                          color: descriptionColor,
                        ),
                        maxLines: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width *
                            0.4, // Adjust height as needed
                        child: Image.network(
                          imageUrl!,
                          fit: BoxFit.cover,
                          color: isBlurActive
                              ? const Color.fromRGBO(206, 172, 172, 0.498)
                              : null,
                          colorBlendMode: BlendMode.dstATop,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(
    TextEditingController controller,
  ) {
    TextEditingController textEditingController =
        TextEditingController(text: controller.text);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Color pickerColor = Colors.white;
        return AlertDialog(
          title: const Text('Text Properties'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(labelText: 'Text'),
                onChanged: (text) {
                  this.setState(() {
                    controller.text = textEditingController.text;
                  });
                },
              ),
              const SizedBox(height: 10),
              const Text(
                'TextSize',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
              ),
              Slider(
                value: fontSize,
                min: 0.0,
                max: 100.0,
                onChanged: (newValue) {
                  setState(() {
                    fontSize = newValue;
                    if (selectedText == 1) {
                      titleFont = fontSize;
                      // fontSize =titleFont;
                    } else if (selectedText == 2) {
                      subtitleFont = fontSize;
                      // fontSize=subtitleFont;
                    } else if (selectedText == 3) {
                      descFont = fontSize;
                      // fontSize=descFont;
                    }
                  });
                },
              ),
              const SizedBox(height: 10),
              const Text('Select Color',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    controller.text = textEditingController.text.toString();
                    if (selectedText == 1) {
                      titleColor = pickerColor;
                    } else if (selectedText == 2) {
                      subtitleColor = pickerColor;
                    } else if (selectedText == 3) {
                      descriptionColor = pickerColor;
                    }
                  });
                  Navigator.of(context).pop();
                },
                child: const Text('Apply'),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget UrlInputDialog() {
    return AlertDialog(
      title: const Text('Enter URL'),
      content: SizedBox(
        width: 200,
        height: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _urlController,
              decoration: const InputDecoration(labelText: 'URL'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Enable Blur'),
                Switch(
                  value: isBlurActive,
                  onChanged: (value) {
                    setState(() {
                      isBlurActive = value;
                    });
                  },
                ),
                const Text('Apply borderRadius'),
                
              ],
            ),
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
}
