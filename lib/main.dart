import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(title: 'Flutter'));
}

class AppWidget extends StatelessWidget {
  final String? title; //

  const AppWidget({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Aula Flutter com Classe',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 100.0),
        ),
      ),
    );
  }
}
