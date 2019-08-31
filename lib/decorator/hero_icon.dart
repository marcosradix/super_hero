import 'package:flutter/material.dart';
import 'package:super_hero/service/callMessageService/callsAndMessagesService.dart';
import 'icon_text.dart';

class HeroIcon extends StatelessWidget {
  HeroIcon(this.heroNome, this.service);
  final String heroNome;
  final CallsAndMessagesService service;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new IconText(icon: Icons.call, text: "Ligar", nomeHero: "para ${this.heroNome}", service: service,),
          new IconText(icon: Icons.message, text: "Mensagem de texto", nomeHero: "para ${this.heroNome}",service: service),
          new IconText(icon: Icons.photo, text: "Foto", nomeHero: "de ${this.heroNome}",),
        ],
      ),
    );
  }
}