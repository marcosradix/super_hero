import 'package:flutter/material.dart';
import 'package:super_hero/service/callMessageService/callsAndMessagesService.dart';

class IconText extends StatelessWidget {
  IconText({this.icon, this.text, this.nomeHero, this.service});
  final IconData icon;
  final String text;
  final String nomeHero;
  final CallsAndMessagesService service;

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
                if(icon == Icons.call){
                service.call("*144");
                }
                if(icon == Icons.message){
                service.sendSms("3333");                  
                }
                final snackBar = new SnackBar(
                    content: new Text(
                      "${this.text}  ${this.nomeHero}",
                      style: new TextStyle(fontSize: 20.0),
                    ),
                    duration: Duration(milliseconds: 3000));
                Scaffold.of(context).showSnackBar(snackBar);
              }),
          new Text(
            this.text,
            style: new TextStyle(fontSize: 18.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}
