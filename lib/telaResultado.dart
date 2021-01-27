import 'package:flutter/material.dart';

class TelaResultado extends StatefulWidget {
  var aleatorio;

  TelaResultado(var aleatorio){
    this.aleatorio = aleatorio;
  }
  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {

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
            Image.asset("${widget.aleatorio}"),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: Image.asset("images/botao_voltar.png")),
          ],
        ),
      ),
    );
  }
}
