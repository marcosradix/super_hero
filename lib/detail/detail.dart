import 'package:flutter/material.dart';

import '../decorator/hero_clother.dart';

import '../decorator/hero_icon.dart';
import '../decorator/hero_section.dart';

class Detail extends StatelessWidget {
  Detail({this.nome, this.imagem});
  final String nome;
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child: new Hero(
              tag: nome,
              child: new Material(
                child: new InkWell(
                   child: new Image.asset("img/$imagem", fit: BoxFit.cover,),
                ),
              ),
            ),
           
          ),
          new HeroSection(nome: nome),
          new HeroIcon(this.nome),
          new HeroClother(),
        ],
      ),
    );
  }
}