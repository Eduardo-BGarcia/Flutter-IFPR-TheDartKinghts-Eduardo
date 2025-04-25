import 'package:flutter_aula/aula/enums/estado.dart';

class Pessoa {
  int? id;
  String nome;
  String cidade;
  Estado estado;
  int idade;
  double peso;

  Pessoa(this.id, this.nome, this.idade, this.peso, this.cidade, this.estado);

  Pessoa.create(
    String nome,
    int idade,
    double peso,
    String cidade,
    Estado estado,
  ) : this(DateTime.now().hashCode, nome, idade, peso, cidade, estado);

  String describe() {
    String anoPluSin = idade > 1 || idade == 0 ? 'anos' : 'ano';
    return """
Olá $nome!
Vi aqui que você tem $idade $anoPluSin.
Tem $peso KGs.
E mora em $cidade - ${estado.sigla}

PS: Seu identificador é $id
""";
  }
}
