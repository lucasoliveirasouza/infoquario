

class PeixeAguaDoce{
  // nomePopular,nomeCientifico,nomePopular,classe,ordem,familia,genero,origem,tamanho,expectativa,populacaoMinima,tipoAquario,volumeMinimo,fachadaMinima,dificuldade;
  late String nomeCientifico;
  late String tipo;
  late String nomePopular;
  late String expectativa;
  late String imagem;


  PeixeAguaDoce(String nomeCientifico, String tipo, String nomePopular, String expectativa, String imagem){
    this.nomeCientifico = nomeCientifico;
    this.tipo = tipo;
    this.nomePopular = nomePopular;
    this.expectativa = expectativa;
    this.imagem = imagem;
  }
}