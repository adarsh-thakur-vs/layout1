// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardData {
  String imageUrl;
  String message;
  String name;
  String position;

  CardData({
    required this.imageUrl,
    required this.message,
    required this.name,
    required this.position,
  });
}

class testimonial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerList();
  }
}

class ContainerList extends StatefulWidget {
  @override
  _ContainerListState createState() => _ContainerListState();
}

class _ContainerListState extends State<ContainerList> {
  List<CardData> cards = List.generate(
    5,
    (index) => CardData(
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy5-nRVyD9jGoNtgZCrqb9NBn8VeH4aw3stV5y3Dk-A-lWjDUuFnJs_tYFWNOE6Gl330w&usqp=CAU',
      message: 'Message ${index + 1}',
      name: 'Name ${index + 1}',
      position: 'Position ${index + 1}',
    ),
  );

  void _showEditDialog(int index) {
    TextEditingController imageUrlController =
        TextEditingController(text: cards[index].imageUrl);
    TextEditingController messageController =
        TextEditingController(text: cards[index].message);
    TextEditingController nameController =
        TextEditingController(text: cards[index].name);
    TextEditingController positionController =
        TextEditingController(text: cards[index].position);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Card'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: imageUrlController,
                  decoration: InputDecoration(labelText: 'Image URL'),
                ),
                TextField(
                  controller: messageController,
                  decoration: InputDecoration(labelText: 'Message'),
                  maxLines: null, // Allow multiline input
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  controller: positionController,
                  decoration: InputDecoration(labelText: 'Position'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  cards[index].imageUrl = imageUrlController.text;
                  cards[index].message = messageController.text;
                  cards[index].name = nameController.text;
                  cards[index].position = positionController.text;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60, right: 60),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 600,
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Testimonials',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: cards
                  .map(
                    (card) => GestureDetector(
                      onTap: () {
                        _showEditDialog(cards.indexOf(card));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          // border: Border.all(),
                          color: Color.fromARGB(255, 227, 228, 233),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                
                                    color: Color.fromARGB(255, 33, 27, 27).withOpacity(0.5),// Color of the shadow
                                // Blur radius
                                offset: Offset(1.0, 8.0),
                              

                                // Offset in the x and y directions
                                ),
                          ],
                        ),
                        width: 300,
                        height: 500, // Set width of the container
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(card.imageUrl),
                            ),
                            SizedBox(height: 10),
                            Wrap(
                              children: [
                                Text(
                                  card.message,
                                  style: TextStyle(fontSize: 18),
                                  maxLines: 10, // Limit to 5 lines
                                  overflow: TextOverflow
                                      .ellipsis, // Ellipsis if more than 5 lines
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${card.name}, ${card.position}',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ]),
      ),
    );
  }
}




