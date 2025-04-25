class Pessoa {
  String _nome;
  double _peso;

  Pessoa(String nome, double peso) : _nome = nome, _peso = peso;

  String get nome => _nome;
  set nome(String nome) => _nome = nome;

  double get peso => _peso;
  set peso(double peso) => _peso = peso;

  String seApresentar() {
    String apresentacao = 'Olá! Eu me chamo ${nome} e tenho ${peso} KGs';
    return apresentacao;
  }
}
