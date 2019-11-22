
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  String title;
  Image image;
  Function onStarIt;
  bool isStarred;
  MyCard({Key key, this.title, this.image, this.onStarIt, this.isStarred}) : super(key: key);
  MyCard.titleOnly({Key key, this.title, this.onStarIt, this.isStarred}) : super(key: key){
    image = Image.asset("assets/opportunity.jpg");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(this.title),
                  FlatButton.icon(
                    color: isStarred ? Colors.yellow : Colors.grey,
                    onPressed: this.onStarIt,
                    icon: Icon(isStarred ? Icons.star : Icons.star_border),
                    label: Text("Star it"),
                  ),
                ],
              ),
              // Image.asset("assets/opportunity.jpg"),
              this.image,
            ],
          ),
        ),
      ),
    );
  }
}
