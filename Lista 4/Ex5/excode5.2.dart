import 'package:excod/excodeProduto.dart';

class ProdutoAlimenticio extends Produto{
  String dataValidade;
  
  ProdutoAlimenticio({
    required super.codigo, required super.nome, required super.preco, required this.dataValidade
  });

  void exibirDetalhes(){
    print("---- Detalhes do Produto ----");
    print("Codigo: ${codigo}\nNome: ${nome}\nPreco: ${preco}\nValidade: ${dataValidade}");
  }

}