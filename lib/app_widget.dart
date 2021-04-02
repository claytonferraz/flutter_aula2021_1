import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/perfil_page.dart';
// import a nova class gerada
import 'app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

// fazer os imports

class AppWidget extends StatelessWidget {
  // retiramos o atributo title
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.green,
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/perfil': (context) => PerfilPage(),
          },
        );
      },
    );
  }
}

// primarySwatch: Colors.green,
// brightness: Brightness.dark,
