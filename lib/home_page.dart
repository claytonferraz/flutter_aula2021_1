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
    return Scaffold(
      appBar: AppBar(title: Text('Aula Dispostivo Móvel')),

      body: Center(
          child: GestureDetector(
              child: Text('Click: $counter', style: TextStyle(fontSize: 34)),
              onTap: () {
                // ao colocar o setState vai mudar o estado
                setState(() {
                  counter++;
                });
              })),
      // passando botao
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        //vamos passar a funcao contar
        onPressed: () {
          setState(() {
            counter--;
          });
        },
      ),
    );
  }
}
