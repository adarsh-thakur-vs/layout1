// // ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:layout1/templates/template01/about_us.dart';
import 'package:layout1/templates/template01/section1.dart';
import 'package:layout1/templates/template01/testimonial.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => HeaderState();
}

class HeaderState extends State<Header> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedDrawer = 0;

  void openDrawer(int drawerIndex) {
    setState(() {
      selectedDrawer = drawerIndex;
    });
  }

  //Logo variables
  late String logoUrl;
  late double logoHeight;
  late double logoWidth;
  late double logoBorderRadius;
  late double logoBorderWidth;
  late Color logoBorderColor;
  late bool isLogoBorder;
  late bool isLogoBorderTransParent;

  //title variables
  late String titleText;
  late double titleSize;
  late Color titleColor;
  late bool isTitleBold;
  late bool isTitleItalic;
  late bool isTitleUnderline;

  //menu1 variables
  late String menu1Text;
  late double menu1Size;
  late Color menu1Color;
  late bool ismenu1Bold;
  late bool ismenu1Italic;
  late bool ismenu1Underline;

  //menu2 variables
  late String menu2Text;
  late double menu2Size;
  late Color menu2Color;
  late bool ismenu2Bold;
  late bool ismenu2Italic;
  late bool ismenu2Underline;

  //menu3 varialbes
  late String menu3Text;
  late double menu3Size;
  late Color menu3Color;
  late bool ismenu3Bold;
  late bool ismenu3Italic;
  late bool ismenu3Underline;

  //header container variable
  String? headerImageUrl;
  late Color headerContainerColor;
  late bool isHeaderImageBackground;
  late bool isHeaderColorBackground;
  late bool isHeaderTransparentBackground;
  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    logoUrl =
        'https://gobranddirect.com/cdn/shop/products/Asset2_grande.jpg?v=1619802039';
    logoHeight = 90;
    logoWidth = 90;
    logoBorderRadius = 0.0;
    logoBorderColor = Colors.black;
    logoBorderWidth = 0.0;
    isLogoBorderTransParent=false;

    titleText = 'Edit Title';
    titleSize = 20;
    titleColor = Colors.black;
    isTitleBold = false;
    isTitleItalic = false;
    isTitleUnderline = false;

    menu1Text = 'edit menu1';
    menu1Size = 20;
    menu1Color = Colors.black;
    ismenu1Bold = false;
    ismenu1Italic = false;
    ismenu1Underline = false;

    menu2Text = 'edit menu2';
    menu2Size = 20;
    menu2Color = Colors.black;
    ismenu2Bold = false;
    ismenu2Italic = false;
    ismenu2Underline = false;

    menu3Text = 'edit menu3';
    menu3Size = 20;
    menu3Color = Colors.black;
    ismenu3Bold = false;
    ismenu3Italic = false;
    ismenu3Underline = false;

    headerImageUrl =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYscfUBUbqwGd_DHVhG-ZjCOD7MUpxp4uhNe7toUg4ug&s';
    headerContainerColor = Colors.transparent;
    isHeaderImageBackground = false;
    isHeaderColorBackground = false;
    isHeaderTransparentBackground = true;
    selectedRadio = 0;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: [GestureDetector(
            onTap: () {
              openDrawer(5);
              _scaffoldKey.currentState!.openEndDrawer();
            },
            child: Container(
              decoration: BoxDecoration(
                color: isHeaderColorBackground ? headerContainerColor : null,
                image: isHeaderImageBackground
                    ? DecorationImage(
                        image: NetworkImage(
                          headerImageUrl!,
                        ),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              height: MediaQuery.of(context).size.height * 0.15,
              
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //image logo
                    GestureDetector(
                      onTap: () {
                        openDrawer(0);
                        _scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Container(
                        width: logoWidth,
                        height: logoHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(logoBorderRadius),
                          border: Border.all(
                            color:isLogoBorderTransParent?logoBorderColor:Colors.transparent, // Border color
                            width: logoBorderWidth,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              logoUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        openDrawer(1);
                        _scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Container(
                        width: 500,
                        height: 200,
                        alignment: Alignment.center,
                        child: Text(
                          titleText,
                          style: TextStyle(
                            color: titleColor,
                            fontSize: titleSize,
                            fontWeight:
                                isTitleBold ? FontWeight.bold : FontWeight.normal,
                            fontStyle:
                                isTitleItalic ? FontStyle.italic : FontStyle.normal,
                            decoration: isTitleUnderline
                                ? TextDecoration.underline
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    //menu items
                    Container(
                      width: 498,
                      height: 200,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              openDrawer(2);
                              _scaffoldKey.currentState!.openEndDrawer();
                            },
                            child: Container(
                              width: 166,
                              height: 200,
                              alignment: Alignment.center,
                              child: Text(
                                menu1Text,
                                style: TextStyle(
                                  color: menu1Color,
                                  fontSize: menu1Size,
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
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              openDrawer(3);
                              _scaffoldKey.currentState!.openEndDrawer();
                            },
                            child: Container(
                              width: 166,
                              height: 200,
                              alignment: Alignment.center,
                              child: Text(
                                menu2Text,
                                style: TextStyle(
                                  color: menu2Color,
                                  fontSize: menu2Size,
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
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              openDrawer(4);
                              _scaffoldKey.currentState!.openEndDrawer();
                            },
                            child: Container(
                              width: 166,
                              height: 200,
                              alignment: Alignment.center,
                              child: Text(
                                menu3Text,
                                style: TextStyle(
                                  color: menu3Color,
                                  fontSize: menu3Size,
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
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Section1(),
          AboutUs(),
          testimonial()
          ],
        ),
      ),
      endDrawer: buildSelectedDrawer(),
    );
  }

  Widget buildSelectedDrawer() {
    switch (selectedDrawer) {
      case 0:
        return logoDrawer();
      case 1:
        return titleDrawer();
      case 2:
        return menu1Drawer();
      case 3:
        return menu2Drawer();
      case 4:
        return menu3Drawer();
      case 5:
        return headerContainerDrawer();
      default:
        return SizedBox();
    }
  }

  Widget logoDrawer() {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Logo Image Url',
                  ),
                  onChanged: (value) {
                    setState(() {
                      logoUrl = value;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Text('Logo Height:'),
                  Slider(
                    value: logoHeight,
                    min: 10,
                    max: 130,
                    onChanged: (newValue) {
                      setState(() {
                        logoHeight = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text('Logo Width:'),
                Slider(
                  value: logoWidth,
                  min: 10,
                  max: 200,
                  onChanged: (newValue) {
                    setState(() {
                      logoWidth = newValue;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                Text('Logo Border Radius:'),
                Slider(
                  value: logoBorderRadius,
                  min: 0.0,
                  max: 200,
                  onChanged: (newValue) {
                    setState(() {
                      logoBorderRadius = newValue;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                Text('Logo Border Width:'),
                Slider(
                  value: logoBorderWidth,
                  min: 0.0,
                  max: 20,
                  onChanged: (newValue) {
                    setState(() {
                      logoBorderWidth = newValue;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile(
                title: Text('Logo Border'),
                value: isLogoBorderTransParent,
                onChanged: (bool? newValue) {
                  setState(() {
                    isLogoBorderTransParent = newValue!;
                  });
                }),
            Column(
              children: [
                Text('Select Color of Border:'),
                SizedBox(
                  height: 150,
                  child: MaterialPicker(
                    pickerColor: logoBorderColor,
                    onColorChanged: (Color color) {
                      setState(() {
                        logoBorderColor = color;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget titleDrawer() {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: titleText,
                  ),
                  onChanged: (value) {
                    setState(() {
                      titleText = value;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                Text('Text Size'),
                Slider(
                  value: titleSize,
                  min: 5,
                  max: 200,
                  onChanged: (newValue) {
                    setState(() {
                      titleSize = newValue;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile(
                title: Text('Bold:'),
                value: isTitleBold,
                onChanged: (bool? newValue) {
                  setState(() {
                    isTitleBold = newValue!;
                  });
                }),
            CheckboxListTile(
                title: Text('Italic:'),
                value: isTitleItalic,
                onChanged: (bool? newValue) {
                  setState(() {
                    isTitleItalic = newValue!;
                  });
                }),
            CheckboxListTile(
                title: Text('Underline:'),
                value: isTitleUnderline,
                onChanged: (bool? newValue) {
                  setState(() {
                    isTitleUnderline = newValue!;
                  });
                }),
            Column(
              children: [
                Text('Select Color of Border:'),
                SizedBox(
                  height: 150,
                  child: MaterialPicker(
                    pickerColor: titleColor,
                    onColorChanged: (Color color) {
                      setState(() {
                        titleColor = color;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget menu1Drawer() {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: menu1Text,
                  ),
                  onChanged: (value) {
                    setState(() {
                      menu1Text = value;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                Text('Text Size'),
                Slider(
                  value: menu1Size,
                  min: 5,
                  max: 200,
                  onChanged: (newValue) {
                    setState(() {
                      menu1Size = newValue;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile(
                title: Text('Bold:'),
                value: ismenu1Bold,
                onChanged: (bool? newValue) {
                  setState(() {
                    ismenu1Bold = newValue!;
                  });
                }),
            CheckboxListTile(
                title: Text('Italic:'),
                value: ismenu1Italic,
                onChanged: (bool? newValue) {
                  setState(() {
                    ismenu1Italic = newValue!;
                  });
                }),
            CheckboxListTile(
                title: Text('Underline:'),
                value: ismenu1Underline,
                onChanged: (bool? newValue) {
                  setState(() {
                    ismenu1Underline = newValue!;
                  });
                }),
            Column(
              children: [
                Text('Select Color of Border:'),
                SizedBox(
                  height: 150,
                  child: MaterialPicker(
                    pickerColor: menu1Color,
                    onColorChanged: (Color color) {
                      setState(() {
                        menu1Color = color;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget menu2Drawer() {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: menu2Text,
                  ),
                  onChanged: (value) {
                    setState(() {
                      menu2Text = value;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                Text('Text Size'),
                Slider(
                  value: menu2Size,
                  min: 5,
                  max: 200,
                  onChanged: (newValue) {
                    setState(() {
                      menu2Size = newValue;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile(
                title: Text('Bold:'),
                value: ismenu2Bold,
                onChanged: (bool? newValue) {
                  setState(() {
                    ismenu2Bold = newValue!;
                  });
                }),
            CheckboxListTile(
                title: Text('Italic:'),
                value: ismenu2Italic,
                onChanged: (bool? newValue) {
                  setState(() {
                    ismenu2Italic = newValue!;
                  });
                }),
            CheckboxListTile(
                title: Text('Underline:'),
                value: ismenu2Underline,
                onChanged: (bool? newValue) {
                  setState(() {
                    ismenu2Underline = newValue!;
                  });
                }),
            Column(
              children: [
                Text('Select Color of Border:'),
                SizedBox(
                  height: 150,
                  child: MaterialPicker(
                    pickerColor: menu2Color,
                    onColorChanged: (Color color) {
                      setState(() {
                        menu2Color = color;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget menu3Drawer() {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: menu3Text,
                  ),
                  onChanged: (value) {
                    setState(() {
                      menu3Text = value;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                Text('Text Size'),
                Slider(
                  value: menu3Size,
                  min: 5,
                  max: 200,
                  onChanged: (newValue) {
                    setState(() {
                      menu3Size = newValue;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile(
                title: Text('Bold:'),
                value: ismenu3Bold,
                onChanged: (bool? newValue) {
                  setState(() {
                    ismenu3Bold = newValue!;
                  });
                }),
            CheckboxListTile(
                title: Text('Italic:'),
                value: ismenu3Italic,
                onChanged: (bool? newValue) {
                  setState(() {
                    ismenu3Italic = newValue!;
                  });
                }),
            CheckboxListTile(
                title: Text('Underline:'),
                value: ismenu3Underline,
                onChanged: (bool? newValue) {
                  setState(() {
                    ismenu3Underline = newValue!;
                  });
                }),
            Column(
              children: [
                Text('Select Color of Border:'),
                SizedBox(
                  height: 150,
                  child: MaterialPicker(
                    pickerColor: menu3Color,
                    onColorChanged: (Color color) {
                      setState(() {
                        menu3Color = color;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget headerContainerDrawer() {
    return Drawer(
      
      child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("Background Properties of Header",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              RadioListTile(
                title: Text('Transparent'),
                value: 0,
                groupValue: selectedRadio,
                onChanged: (newValue) {
                  if (newValue == 0) {
                    setState(() {
                      selectedRadio=newValue!;
                      isHeaderImageBackground = false;
                      isHeaderColorBackground = false;
                      isHeaderTransparentBackground = true;
                    });
                  }
                },
              ),
              RadioListTile(
                title: Text('Color'),
                value: 1,
                groupValue: selectedRadio,
                onChanged: (newValue) {
                  if (newValue == 1) {
                    setState(() {
                      selectedRadio=newValue!;
                      isHeaderImageBackground = false;
                      isHeaderColorBackground = true;
                      isHeaderTransparentBackground = false;
                    });
                  }
                },
              ),
              RadioListTile(
                title: Text('Image'),
                value: 2,
                groupValue: selectedRadio,
                onChanged: (newValue) {
                  if (newValue == 2) {
                    // Corrected the condition
                    setState(() {
                      selectedRadio=newValue!;
                      isHeaderImageBackground = true;
                      isHeaderColorBackground = false;
                      isHeaderTransparentBackground = false;
                    });
                  }
                },
              ),
            
          if (isHeaderColorBackground)
            ListTile(
              title: Text('Select Color of Container:'),
              subtitle: SizedBox(
                height: 150,
                child: MaterialPicker(
                  pickerColor: headerContainerColor,
                  onColorChanged: (Color color) {
                    setState(() {
                      headerContainerColor = color;
                    });
                  },
                ),
              ),
            ),
          if (isHeaderImageBackground)
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Image URL',
                ),
                onChanged: (value) {
                  setState(() {
                    headerImageUrl = value;
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}
