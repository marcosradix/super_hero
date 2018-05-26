import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  IconText({this.icon, this.text, this.nomeHero});
  final IconData icon;
  final String text;
  final String nomeHero;


  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new InkWell(
            child: new Icon(
              this.icon,
              size: 50.0,
              color: Colors.blue,
            ),
            onTap: () {
              final snackBar = new SnackBar(content: new Text("${this.text}  ${this.nomeHero}", style: new TextStyle(fontSize: 20.0),));
              Scaffold.of(context).showSnackBar(snackBar);
            }
          ),
          new Text(
            this.text,
            style: new TextStyle(fontSize: 18.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}
