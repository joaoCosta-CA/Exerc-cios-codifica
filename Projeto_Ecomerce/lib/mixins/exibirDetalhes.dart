import 'package:excode_5/models/produto_alimenticio.dart';
import 'package:excode_5/models/produto_eletronico.dart';

mixin Exibir{
    void exibirDetalhes() {
    print("---- Detalhes do Produto ----");
    print(
      "Codigo: $codigo\nNome: $nome\nPreco: $preco",
    );

    if (this is ProdutoAlimenticio) {
      final alimenticio = this as ProdutoAlimenticio;
      print("Validade: ${alimenticio.dataValidade}");
    } else if (this is ProdutoEletronico) {
      final eletronico = this as ProdutoEletronico;
      print("Garantia: ${eletronico.garantiaMes}");
    }
    print("Tipo: $tipo");
    print("\n");
  }

  String get nome;
  String get codigo;
  String get tipo;
  double get preco;

  
}