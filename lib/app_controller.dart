import 'package:flutter/material.dart';

// muda o estado dos dados, e não tela
class AppController extends ChangeNotifier {
  // design pattern singleton
  static AppController instance = new AppController();

  bool isDarkTheme = false;
  changeTheme() {
    // contrário de um boolean
    isDarkTheme = !isDarkTheme;
    notifyListeners();
    print('Mudou de tema');
  }
}
