import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  HeroSection({this.nome});
  final String nome;

  @override
  Widget build(BuildContext context) {

    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nome,
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "${nome.toLowerCase()}\@gmail.com",
                  style: new TextStyle(fontSize: 17.0, color: Colors.grey),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                size: 50.0,
                color: Colors.red,
              ),
              new Text(
                "12",
                style: new TextStyle(fontSize: 14.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
