import 'package:flutter_aula/exceptions/CustomException.dart';

String validaNulo(String? valor) {
  if (valor == null) {
    throw CustomException("Valor não pode ser nulo");
  }

  return valor;
}

int validaInteiro(String? valor, {int? min, int? max}) {
  valor = validaNulo(valor);

  try {
    int retorno = int.parse(valor);

    if (min != null && retorno < min) {
      throw CustomException("O número é menor do que o limite $min");
    }

    if (max != null && retorno < max) {
      throw CustomException("O número é maior do que o limite $max");
    }

    return retorno;
  } catch (e) {
    throw CustomException("Não foi possível converter o valor para inteiro");
  }
}

String validaString(String? valor) {
  valor = validaNulo(valor);

  if (valor.trim().isEmpty) {
    throw CustomException(
      "O valor não pode ser apenas espaços ou caracteres especiais",
    );
  }

  return valor;
}

double validaDouble(String? valor) {
  valor = validaNulo(valor);

  try {
    return double.parse(valor);
  } catch (e) {
    throw CustomException("Não foi possível converter para ponto flutuante");
  }
}
