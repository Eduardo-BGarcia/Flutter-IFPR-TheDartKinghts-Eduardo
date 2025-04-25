import 'package:aula_27_03_25/aula_sintaxe/cidade.dart';

class Pessoa {
  String nome;
  double peso;
  double altura;
  Cidade cidade;
  Function imc;

  Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
    required this.cidade,
    required this.imc,
  });

  String seApresentar() {
    String apresentacao =
        "Olá! Eu me chamo ${nome}, peso ${peso} KGs, tenho ${altura}m," +
        " meu IMC é ${imprimirIMC().toStringAsFixed(2)}." +
        " E moro em ${cidade.toString()}.";
    return apresentacao;
  }

  double imprimirIMC() {
    return imc(peso, altura);
  }
}
