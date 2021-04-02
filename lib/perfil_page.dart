// sempre se cria uma classe que vai dentro da classe StateFul
import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'menu_drawer.dart';

class PerfilPage extends StatefulWidget {
  @override
  State<PerfilPage> createState() {
    return PerfilPageState();
  }
}

class PerfilPageState extends State<PerfilPage> {
  String nome = 'Colors.green';

  Widget _body() {
    return ListView(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // podemos usar Scaffold ou material

    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        title: Text('Perfil'),
        actions: [CustomSwitch()],
      ),
      body: Stack(
        children: [
          // aqui ele empilha os componentes
          SizedBox(
              height: 320,
              width: 420,
              child: Image.asset(
                'assets/images/aboutme.png',
                fit: BoxFit.cover,
              )),
          //Container(color: Colors.black.withOpacity(0.36)),
          _body(),
        ],
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
