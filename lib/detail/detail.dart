import 'package:flutter/material.dart';
import 'package:super_hero/service/callMessageService/callsAndMessagesService.dart';

import '../decorator/hero_clother.dart';

import '../decorator/hero_icon.dart';
import '../decorator/hero_section.dart';

class Detail extends StatelessWidget {
  Detail({this.nome, this.imagem, this.service});
  final String nome;
  final String imagem;
  final CallsAndMessagesService service;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
               leading: new IconButton(
               icon: new Icon(Icons.arrow_back, color: Colors.white),
               onPressed: () => Navigator.pop(context),
              ) ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child: new Hero(
              tag: nome,
              child: new Material(
                child: new InkWell(
                   child: new Image.asset("img/$imagem", fit: BoxFit.cover,),
                   onDoubleTap: () => Navigator.pop(context),
                ),
              ),
            ),
          ),
          new HeroSection(nome: nome, service: service,),
          new HeroIcon(this.nome, service),
          new HeroClother(),
        ],
      ),
    );
  }
}