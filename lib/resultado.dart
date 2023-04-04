import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;
  const Resultado(
      {Key? key, required this.pontuacao, required this.reiniciarQuestionario})
      : super(key: key);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom';
    } else if (pontuacao < 16) {
      return 'Você é demais, impressionante';
    } else {
      return 'Nível jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        )),
        TextButton(
            onPressed: reiniciarQuestionario,
            child: Text(
              ('Reiniciar?'),
              style: TextStyle(fontSize: 16),
            ))
      ],
    );
  }
}
