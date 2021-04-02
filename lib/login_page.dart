import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 50,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Container(
                    height: 40,
                  ),
                  Card(
                    child: Padding(
                      //padding: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 12),

                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) => email = text,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email User',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            onChanged: (text) => senha = text,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Senha',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (email == 'clayton@gmail.com' && senha == '123') {
                        print('passou');
                        Navigator.of(context).pushNamed('/home');
                      } else {
                        print('Login Errado');
                      }
                    },
                    child: Container(
                      child: Text('Login'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // aqui ele empilha os componentes
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/Night.png',
                fit: BoxFit.cover,
              )),
          Container(color: Colors.black.withOpacity(0.36)),
          _body(),
        ],
      ),
    );
  }
}
