import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './perguntas.dart';

main() {
  runApp(AulaGrupoDois());
}

class AulaGrupoDois extends StatefulWidget {
  @override
  State<AulaGrupoDois> createState() => _AulaGrupoDoisState();
}

class _AulaGrupoDoisState extends State<AulaGrupoDois> {
  var contador = 0;

  final perguntas = [
    "Qual a cor favorita?",
    "Comida favorita?",
    "Animal que mais gosta?",
    "O que faz nas horas vagas?"
  ];

  @override
  void clicou() {
    setState(() {
      contador = contador + 1;
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Jogo das perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[contador]),
            Perguntas(perguntas[contador]),
            ElevatedButton(onPressed: clicou, child: Text("Azul")),
            ElevatedButton(onPressed: null, child: Text("Verde")),
            ElevatedButton(onPressed: null, child: Text("Vermelho")),
            ElevatedButton(onPressed: null, child: Text("Amarelo")),
            NovoBotao(
              texto: "Novo Botão",
              acao: () {
                print("Clicou no Novo Botão!");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NovoBotao extends StatelessWidget {
  final String texto;
  final VoidCallback acao;

  const NovoBotao({Key? key, required this.texto, required this.acao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: acao,
      child: Text(texto),
    );
  }
}