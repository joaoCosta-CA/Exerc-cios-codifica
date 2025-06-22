mixin Rastreavel{
  gerarEtiquetaEnvio(){
    print("======================");
    print("ETIQUETA DE ENVIO");
    print("Codigo: $codigo");
    print("Produto: $nome");
    print("======================");
  }

  String get nome;
  String get codigo;
}