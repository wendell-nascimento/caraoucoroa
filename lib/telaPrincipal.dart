import 'dart:math';

import 'package:caraoucoroa_app/telaResultado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  var opcoes_moeda = [
    "images/moeda_cara.png",
    "images/moeda_coroa.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(16),
        //color: Colors.green[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
                onTap: (){
                  int totalDeImagens = opcoes_moeda.length;
                  var aleatoria = opcoes_moeda[Random().nextInt(totalDeImagens)];

                  Navigator.push(context, MaterialPageRoute(builder: (context) => TelaResultado(aleatoria)));
                },
                child: Image.asset("images/botao_jogar.png"))
          ],
        ),
      ),
    );
  }
}
