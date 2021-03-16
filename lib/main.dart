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
      home: HomePage(),
    );
  }
}

// sempre se cria uma classe que vai dentro da classe StateFul
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
    return Container(
        child: Center(
            child: GestureDetector(
                child: Text('Click: $counter'),
                onTap: () {
                  // ao colocar o setState vai mudar o estado
                  setState(() {
                    counter++;
                  });
                })));
  }
}
