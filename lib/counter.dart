import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.add_circle),onPressed: (){},),
          IconButton(icon: Icon(Icons.add),onPressed: (){},),
          Text("0"),
          IconButton(icon: Icon(Icons.remove),onPressed: (){},),
          IconButton(icon: Icon(Icons.remove_circle),onPressed: (){},),
        ],
      ),
    );
  }
}