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
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Silver"),
                            Text(".NET", style: TextStyle(color: Colors.red),),
                          ],
                        ),
                        Text(
                          "Flutter jest spoko",
                          style: TextStyle(color: Colors.red, fontSize: 25),
                        )
                      ],
                    ),
                    Image.asset("assets/silver.png"),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.red,
                      child: Text("button, ktory nic nie robi"),
                    )
                  ],
                ),
                ),
              ),
              
            ]
          ),
        ),
      ),
      ),
    );
  }
}
