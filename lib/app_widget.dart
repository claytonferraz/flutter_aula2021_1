import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import a nova class gerada
import 'home_page.dart';

// fazer os imports

class AppWidget extends StatelessWidget {
  // retiramos o atributo title
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}
