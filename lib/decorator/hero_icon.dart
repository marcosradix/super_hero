import 'package:flutter/material.dart';
import 'icon_text.dart';

class HeroIcon extends StatelessWidget {
  HeroIcon(this.heroNome);
  final String heroNome;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new IconText(icon: Icons.call, text: "Ligar", nomeHero: this.heroNome,),
          new IconText(icon: Icons.message, text: "Mensagem de texto", nomeHero: this.heroNome,),
          new IconText(icon: Icons.photo, text: "Foto", nomeHero: this.heroNome,),
        ],
      ),
    );
  }
}