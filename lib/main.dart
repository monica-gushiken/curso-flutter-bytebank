import 'package:bank/http/webclient.dart';
import 'package:flutter/material.dart';

import 'Screens/dashboard.dart';

void main() {
  runApp(BankApp());
  findAll().then((transactions) => print('new transactions $transactions'));
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
