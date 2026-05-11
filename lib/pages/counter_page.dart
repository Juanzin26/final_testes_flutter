import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}


class _CounterPageState extends State<CounterPage> {

// variavel
int _contador = 0;


// metodo
void _incrementCounter() { 
  setState(() { // é o metodo que atualiza a tela, ou seja, toda vez que eu quiser atualizar a tela, eu preciso chamar o setState
    _contador++;

  });
}


// UI (interface do usuario)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Voce apertou o botao esse tanto de vezes: "),

            Text(
              _contador.toString(), // para converter o inteiro em string
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: _incrementCounter, 
              child: Text("Aumentar")
            )
          ]
        )
      ),
    );
  }
}
