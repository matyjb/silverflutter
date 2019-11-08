import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pierwsze zajęcia!"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                color: Colors.white70,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Opportunity"),
                          FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.star),
                            label: Text("Star it"),
                          ),
                        ],
                      ),
                      Image.asset("assets/opportunity.jpg"),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Opportunity"),
                          FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.star),
                            label: Text("Star it"),
                          ),
                        ],
                      ),
                      Image.asset("assets/opportunity.jpg"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}