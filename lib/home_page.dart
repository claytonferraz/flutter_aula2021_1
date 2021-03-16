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
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    // podemos usar Scaffold ou material

    return Scaffold(
      appBar: AppBar(title: Text('Aula Dispostivo Móvel')),

      body: Center(
          child: Switch(
              value: isDarkTheme,
              onChanged: (value) {
                setState(() {
                  isDarkTheme = value;
                });
              })),
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
