import 'package:flutter/material.dart';
import 'detail/detail.dart';
import 'object_load/nome_heros.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Super Hero',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Container> _dafStarSuperHero = new List();
  NomeHeroLoad nomeHeroLoad = new NomeHeroLoad();

  _criarLista() async {
    for (var i = 0; i < nomeHeroLoad.nomeHeros.length; i++) {
      final nomeHero = nomeHeroLoad.nomeHeros[i];
      final String imageHero = nomeHero["imagem"];

      _dafStarSuperHero.add(
        new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Card(
            child: new Column(
          children: <Widget>[
            new Hero(
              tag: nomeHero["nome"],
              child: new Material(
                child: new InkWell(
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Detail(nome: nomeHero["nome"], imagem: nomeHero["imagem"]),
                  )),
                  child: new Image.asset("img/$imageHero", fit: BoxFit.cover),
                ),
              ),
            ),
            new Padding(
              padding: new EdgeInsets.all(10.0),
            ),
            new Text(
              nomeHero["nome"],
              style: new TextStyle(fontSize: 20.0),
            )
          ],
        )),
      ));
    }
  }

  @override
  void initState() {
    _criarLista();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Super Hero",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: _dafStarSuperHero,
      ),
    );
  }
}
