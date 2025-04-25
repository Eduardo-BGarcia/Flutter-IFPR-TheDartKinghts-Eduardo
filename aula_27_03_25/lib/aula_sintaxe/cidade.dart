import 'package:aula_27_03_25/aula_sintaxe/estado.dart';

class Cidade {
  String nome;
  Estado estado;

  Cidade({required this.nome, required this.estado});

  @override
  String toString() => "${nome} (${estado.sigla})";
}
