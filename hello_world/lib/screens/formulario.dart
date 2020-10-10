import 'package:flutter/material.dart';
import 'package:hello_word/components/editor.dart';
import 'package:hello_word/models/transferencia.dart';


 

class FormularioTransferencia extends StatefulWidget {
  @override
  _FormularioTransferenciaState createState() => _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();

  final TextEditingController _controladorCampoValor = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando transferência'),
      ),
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Editor(
              controlador: _controladorCampoNumeroConta,
              rotulo: 'Número da Conta',
              dica: 'Ex: 0000',
              ),
          Editor(
              controlador: _controladorCampoValor,
              rotulo: 'Valor',
              dica: 'Ex: 0.00',
              icone: Icons.monetization_on,
              ),
          RaisedButton(
            child: Text('Confimar'),
            onPressed: () => _criaTransferencia(context),
          ),
        ],
      ),
    ));
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('Criando transferencia');
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}