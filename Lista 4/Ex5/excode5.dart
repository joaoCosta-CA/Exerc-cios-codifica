import 'package:excod/excodeProduto.dart';

class ProdutoEletronico extends Produto {
  int garantiaMese;
  ProdutoEletronico({
    required super.codigo, required super.nome, required super.preco, required this.garantiaMese
  });

 void exibirDetalhes(){
  print("---- Detalhes do Produto ----");
    print("Codigo: ${codigo}\nNome: ${nome}\nPreco: ${preco}\nGarantia: ${garantiaMese} Meses");
 }
  
}
