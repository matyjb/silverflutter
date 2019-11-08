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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(color: Colors.black12),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text("Silver"),
                              Text(
                                ".NET",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                          Text(
                            "Flutter jest spoko",
                            style: TextStyle(fontSize: 25, color: Colors.red),
                          ),
                        ],
                      ),
											Image.asset("assets/silver.png"),
                      RaisedButton(
                        onPressed: () {},
                        child: Text("button, ktĂłry nic nie robi"),
                        color: Colors.redAccent,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}