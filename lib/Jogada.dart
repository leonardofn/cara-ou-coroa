import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jogada extends StatefulWidget {
  @override
  _JogadaState createState() => _JogadaState();
}

class _JogadaState extends State<Jogada> {

  void _exibirResultado(){

    var itens = ["cara","coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => Resultado(resultado)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF61BD86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}