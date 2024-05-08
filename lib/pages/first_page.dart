import 'package:flutter/material.dart';
import 'package:navegacao/mansagem.dart';
import 'package:navegacao/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.of(context).push(
              //Array function já tem o return imbutido
             // MaterialPageRoute(builder: (context) => SecondPage(),
            //));

            Navigator.of(context)
                .pushNamed(
                  '/second', 
                  arguments: Mensagem('Mensagem de navegação'),
                );
          },
          child: const Text("Navegar"),
        ), 
        ),
    );
  }
}