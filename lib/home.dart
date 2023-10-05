import 'dart:ui';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _imagemApp = AssetImage("images/padrao.png");
  final _mensagem = "Escolha uma opção abaixo";
  var _userWin = 0;
  var _appWin = 0;
  var _empate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
        backgroundColor: Colors.black26,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "1,2,3...já",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image(image: _imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: null,
                child: Image.asset("images/pedra.png", height: 100),
              ),
              GestureDetector(
                onTap: null,
                child: Image.asset("images/papel.png", height: 100),
              ),
              GestureDetector(
                onTap: null,
                child: Image.asset("images/tesoura.png", height: 100),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Text(
                  "Você: $_userWin",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "App: $_appWin",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Empate: $_empate",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
