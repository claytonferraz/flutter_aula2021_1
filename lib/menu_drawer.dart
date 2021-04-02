import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                Navigator.of(context).pushReplacementNamed('/home');
              }),
          ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              //subtitle: Text('Pagina inicial'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/perfil');
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
    );
  }
}
