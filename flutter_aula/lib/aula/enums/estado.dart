enum Estado {
  ac("Acre"),
  al("Alagoas"),
  ap("Amapá"),
  am("Amazonas"),
  bh("Bahia"),
  ce("Ceará"),
  df("Distrito Federal"),
  es("Espirito Santo"),
  go("Goiás"),
  ma("Maranhão"),
  mt("Mato Grosso"),
  ms("Mato Grosso do Sul"),
  mg("Minas Gerais"),
  para("Pará"),
  pb("Paraíba"),
  pr("Paraná"),
  pe("Pernambuco"),
  pi("Piauí"),
  rj("Rio de Janeiro"),
  rn("Rio Grande do Norte"),
  rs("Rio Grande do Sul"),
  ro("Rondônia"),
  rr("Roraima"),
  sc("Santa Catarina"),
  sp("São Paulo"),
  se("Sergipe"),
  to("Tocantins");

  const Estado(this.sigla);
  final String sigla;

  static String listarSiglas({int colunas = 2}) {
    int index = 0;
    int coluna = 1;
    String textoRetorno = '';
    for (final estado in Estado.values) {
      index++;
      textoRetorno += "$index. ${estado.name.toUpperCase()}\t\t";
      if (coluna >= colunas) {
        textoRetorno += "\n";
        coluna = 1;
      } else {
        coluna++;
      }
    }
    return textoRetorno;
  }

  static int get qtdEstados => Estado.values.length;

  static Estado getPorPosicao(int posicao) {
    return Estado.values.elementAt(posicao);
  }
}
