// sempre se cria uma classe que vai dentro da classe StateFul
import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  String nome = 'Colors.green';
  @override
  Widget build(BuildContext context) {
    // podemos usar Scaffold ou material

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              // ClipOval(child: ...)
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/6089305?v=4'),
              ),
              accountName: Text('Clayton'),
              accountEmail: Text('clayton@gmail.com'),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                //subtitle: Text('Pagina inicial'),
                onTap: () {
                  print('home');
                }),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                //subtitle: Text('Pagina inicial'),
                onTap: () {
                  print('perfil');
                }),
            ListTile(
                leading: Icon(Icons.logout),
                title: Text("Exit"),
                //subtitle: Text('Pagina inicial'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Aula Dispostivo Móvel'),
        actions: [CustomSwitch()],
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Text('Contador: $counter'),
            Container(
              height: 50,
            ),
            Container(
              height: 50,
            ),
            CustomSwitch(),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
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
