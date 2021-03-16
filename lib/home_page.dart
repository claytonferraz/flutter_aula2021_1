// sempre se cria uma classe que vai dentro da classe StateFul
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    // podemos usar Scaffold ou material
    var container = Container(
      height: 250,
      width: 250,
      color: Colors.red,
      //testando filho
      child: Center(
        child: Container(
          height: 150,
          width: 150,
          color: Colors.green,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Aula Dispostivo Móvel')),

      body: container,
      // passando botao
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        //vamos passar a funcao contar
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
