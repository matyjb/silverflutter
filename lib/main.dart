import 'package:flutter/material.dart';
import 'package:silverflutter/my_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> stars = [false, false, false, false, false, false];

  void toggleStar(int index) {
    setState(() {
      stars[index] = !stars[index];
    });
  }

  void setAllStarred() {
    setState(() {
      for (var i = 0; i < stars.length; i++) {
        stars[i] = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      "title1",
      "title2",
      "title3",
      "title4",
      "title5",
      "title6"
    ];
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: this.setAllStarred,
          child: Icon(Icons.star),
        ),
        appBar: AppBar(
          title: Text("Pierwsze zajęcia!"),
        ),
        body: ListView(
          children: titles
              .asMap()
              .map((int index, String title) {
                return MapEntry(
                  index,
                  MyCard.titleOnly(
                      title: title,
                      onStarIt: () => this.toggleStar(index),
                      isStarred: stars[index]),
                );
              })
              .values
              .toList(),
        ),
      ),
    );
  }
}
