import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(AulaGrupoDois());
}

class AulaGrupoDois extends StatefulWidget{

  @override

  State<AulaGrupoDois> createState() => _AulaGrupoDoisState();
}

class _AulaGrupoDoisState extends State<AulaGrupoDois>{
   var contador= 0;

   final perguntas = [
    "Qual a cor favorita?",
    "Comida favorita?",
    "Animal que mais gosta?",
    "O que faz nas horas vagas?"
    ];
   
  void clicou(){
    setState(() {
      contador: contador++;
    });
    print (contador);
    }

Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Perguntas e respostas"),
      ),
      body: Column(
        children: [
          Text(perguntas[contador]),
          ElevatedButton(
            onPressed: eventoBotao,
           child: Text("Enviar")
           ),
           ElevatedButton(
            onPressed: (){
              print ("Outra Função");
            },
           child: Text("Cancelar")),
            ElevatedButton(
              onPressed: () => print ("Função Arrow"),
           child: Text("Salvar")),
        ],
       )   
    )
  );
}
}