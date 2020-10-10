import 'package:flutter/material.dart';
import 'package:hello_word/screens/lista.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[500],
          accentColor: Colors.blueAccent[120],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[120],
            textTheme: ButtonTextTheme.primary,
          )),
      home: ListaTransferencias(),
    );
  }
}
