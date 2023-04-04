import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  const Resposta({Key? key, required this.texto, required this.onSelecao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              textStyle: TextStyle(color: Colors.amberAccent)),
          child: Text(texto),
          onPressed: onSelecao,
        ),
      ),
    );
  }
}
