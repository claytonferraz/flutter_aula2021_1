import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(title: 'Flutter'));
}

class AppWidget extends StatelessWidget {
  final String title; //
  const AppWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Container(child: Center(child: Text('Aula Material'))),
    );
  }
}
