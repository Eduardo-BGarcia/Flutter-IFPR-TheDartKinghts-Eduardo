import 'dart:io';

import 'package:aula_27_03_25/aula_sintaxe/Pessoa2.dart';
import 'package:aula_27_03_25/aula_sintaxe/cidade.dart';
import 'package:aula_27_03_25/aula_sintaxe/estado.dart';

void main() {
  Estado parana = Estado(nome: "Paraná", sigla: "PR");
  Cidade paranapoema = Cidade(nome: "Paranapoema", estado: parana);

  Pessoa p = Pessoa(
    nome: "Jaimundinho",
    peso: 87.2,
    altura: 1.97,
    imc: (peso, altura) => peso / (altura * altura),
    cidade: paranapoema,
  );

  stdout.writeln(p.seApresentar());

  stdout.writeln(
    Pessoa(
      nome: "Jaimundão",
      peso: 87.2,
      altura: 1.97,
      imc: (peso, altura) => peso / (altura * altura),
      cidade: Cidade(
        nome: 'California',
        estado: Estado(nome: 'Paraná', sigla: 'PR'),
      ),
    ).seApresentar(),
  );
}
