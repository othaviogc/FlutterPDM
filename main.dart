import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCor(cor: Colors.blue)),
                );
              },
              child: Text("TELA AZUL"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCor(cor: Colors.green)),
                );
              },
              child: Text("TELA VERDE"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCor(cor: Colors.black)),
                );
              },
              child: Text("TELA PRETA"),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaCor extends StatelessWidget {
  final Color cor;

  TelaCor({required this.cor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
    );
  }
}