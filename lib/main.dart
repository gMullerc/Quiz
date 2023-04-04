import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': ['Perto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual o seu aninal preferido ?',
      'resposta': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual o seu instrutor favorito ?',
      'resposta': ['Maria', 'João', 'Leo', 'Pedro'],
    }
  ];

  void _responder() {
    _perguntaSelecionada = 0;
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String>? respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];

    List<Widget> widgets = respostas!
        .map((t) => Resposta(texto: t, onSelecao: _responder))
        .toList();
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: [
              Questao(
                  texto: _perguntas[_perguntaSelecionada]['texto'].toString()),
              ...widgets,
            ],
          )),
    );
  }
}
