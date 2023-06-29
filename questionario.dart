import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatefulWidget {
  @override
  _QuestionarioState createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  var perguntaAtual = 0;

  final List<Map<String, Object>> perguntas = [
    {
      "texto": "Qual a sua cor favorita?",
      "respostas": ["Amarelo", "Preto", "Branco", "Azul", "Vermelho"]
    },
    {
      "texto": "Qual é seu animal favorito?",
      "respostas": ["Cachorro", "Gato", "Tartaruga", "Periquito"]
    },
    {
      "texto": "Qual sua linguagem favorita?",
      "respostas": ["Python", "Java", "JavaScript"]
    },
  ];

  bool get temPergunta {
    return perguntaAtual < perguntas.length;
  }

  void acao() {
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> respostas = [];

    if (temPergunta) {
      for (var resposta
          in perguntas[perguntaAtual]['respostas'] as List<String>) {
        respostas.add(
          Resposta(resposta, acao),
        );
      }
    }
    
 return Scaffold(
      appBar: AppBar(
        title: temPergunta
            ? Questao(perguntas[perguntaAtual]['texto'].toString())
            : Text('Fim das perguntas!'),
      ),
      body: temPergunta
          ? Column(
              children: [
                ...respostas,
              ],
            )
          : Text('Terminou'),
    );
  }
}