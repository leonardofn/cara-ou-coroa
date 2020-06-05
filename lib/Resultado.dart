import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;
  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem;

    if (widget.valor == "cara") {
      caminhoImagem = "assets/moeda_cara.png";
    } else {
      caminhoImagem = "assets/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0XFF61BD86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}