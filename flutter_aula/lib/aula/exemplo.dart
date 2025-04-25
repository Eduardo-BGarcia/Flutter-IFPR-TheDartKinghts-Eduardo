import "dart:io" show stdout, stdin;

import "package:flutter_aula/aula/classes/Pessoa.dart";
import "package:flutter_aula/aula/enums/Estado.dart";
import "package:flutter_aula/aula/utils/Validacoes.dart";

void main() {
  stdout.writeln(Estado.listarSiglas());
  Pessoa pessoa1 = criarPessoa();
  stdout.writeln("\x1B[2J\x1B[0;0H");
  stdout.writeln(pessoa1.describe());
}

Pessoa criarPessoa() {
  String nome;
  String cidade;
  Estado estado;
  int idade;
  double peso;

  while (true) {
    String? resposta = perguntar("Nome: ");
    if (resposta == null) {
      stdout.writeln("Valor Inválido");
      continue;
    }

    try {
      nome = resposta;
      break;
    } catch (e) {
      stdout.writeln("Valor Inválido! Motivo: ${e.toString()}");
      continue;
    }
  }

  while (true) {
    String? resposta = perguntar("Idade: ");

    try {
      idade = validaInteiro(resposta, min: 0);
      break;
    } catch (e) {
      stdout.writeln("Valor Inválido! ${e.toString()}");
      continue;
    }
  }

  while (true) {
    String? resposta = perguntar("Peso: ");

    try {
      peso = validaDouble(resposta);
      break;
    } catch (e) {
      stdout.writeln("Valor Inválido! ${e.toString()}");
      continue;
    }
  }

  while (true) {
    String? resposta = perguntar("Cidade: ");

    try {
      cidade = validaString(resposta);
      break;
    } catch (e) {
      stdout.writeln("Valor Inválido! ${e.toString()}");
      continue;
    }
  }

  while (true) {
    stdout.writeln(Estado.listarSiglas(colunas: 3));
    String? resposta = perguntar("Estado: ");
    try {
      int posicaoSigla = validaInteiro(resposta);
      estado = Estado.getPorPosicao(posicaoSigla);
      break;
    } catch (e) {
      stdout.writeln("Valor Inválido! ${e.toString()}");
      continue;
    }
  }

  return Pessoa.create(nome, idade, peso, cidade, estado);
}

String? perguntar(String frase) {
  stdout.write(frase);
  return stdin.readLineSync();
}
