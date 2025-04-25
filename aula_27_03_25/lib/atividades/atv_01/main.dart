// Questão 1
/*
  O operador '?' indica que o atributo pode ser nulo. Como o Dart é nullsafe,
  precisamos indicar diretamente que o tipo de valor pode ser String ou nulo.

  Exemplo:
    String? cor;
*/

// Questão 2
/*
  As classes, por padrão, possuem 1 método construtor, porém ele
  define todos os atributos como nulo. Portanto, o erro é que não há
  um valor sendo definido para ano (um atributo nullsafe).

  Correção:
*/
import 'dart:io';

class Carro_q2 {
  String? marca;
  int ano;

  Carro_q2(this.ano, this.marca);
}

// Questão 3
class Produto_q3 {
  String? nome;
  double? preco;
}

// Questão 4

dynamic defaultValue(value, defaultValue) {
  if (value == null || value.isEmpty) return defaultValue;
  return value;
}

void main4() {
  Produto produto = Produto();

  stdout.write('Digite o nome do produto: ');
  var nome = stdin.readLineSync();
  produto.nome = defaultValue(nome, 'Sem Nome');
  stdout.write('Digite o preço do produto: ');

  var preco = stdin.readLineSync();
  produto.preco = double.tryParse(defaultValue(preco, '0'));
  stdout.writeln('Produto: ${produto.nome}, Preço: ${produto.preco}');
}

class Produto {
  String? nome;
  double? preco;
}

//  TODO: LATE

// Questão 5
/*
  O Late não permite que o valor seja nulo, mas permite
  que o valor seja definido posteriormente. O que acaba se
  tornando bem ruim ao tentar acessar um valor late que ainda
  não foi inicializado.
*/

// Questão 6
/*
  O Erro de Inicialização tardia será levantado.
*/

// Questão 7
// BUG

// Questão 8
class Aluno {
  String nome;
  double nota;

  Aluno(this.nome, this.nota);
}

// Questão 9
/*
  De acordo com sua implementação, os construtores garantem
  que os valores sempre sejam inicializados, sem correr o
  risco de erros de inicialização tardia ou nulo.
*/
