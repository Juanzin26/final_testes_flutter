import 'package:flutter/material.dart';


class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}


class _ToDoPageState extends State<ToDoPage> {

// variavel para receber o valor digitado no TextField
TextEditingController myController = TextEditingController();

//variavel de boas vindas
String greetingMessage = "";

// metodo para recepcionar o usuario
void greetUser() {
  String nome = myController.text;
  setState(() {
  greetingMessage = "Olá, " + nome;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // mensagem de boas vindas
              Text(greetingMessage),



              //TextField para receber o valor digitado
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Digite seu nome",
                ),
              ),


              //botão para acionar o método de boas vindas
              ElevatedButton(
                onPressed: greetUser, 
                child: Text("Clique"),

              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
