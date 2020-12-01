import 'dart:math';

import 'package:flutter/material.dart';

main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List frases = [
    'A beleza está nos olhos de quem vê.',
    'O amor é a maior arma',
    'Siga sorrindo e vivendo',
    'Seja seu próprio amor',
    'A luz da sua vida vem de você mesmo',
    'O sol sempre irá nascer para aqueles que o conquista',
  ];
  String frase = 'Selecione uma nova frase';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Frases do dia',
          ),
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('imagens/logo.png'),
              Text(frase,
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    int numeroAleatorio = Random().nextInt(frases.length);
                    frase = frases[numeroAleatorio];
                  });
                },
                child: Text(
                  'Nova Frase',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                color: Colors.cyan,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
