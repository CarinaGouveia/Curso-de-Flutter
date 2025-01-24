import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Resposta extends StatelessWidget {
  final String texto;

  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.blue),
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white)),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
