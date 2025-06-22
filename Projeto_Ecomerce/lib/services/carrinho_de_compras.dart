import 'package:excode_5/models/produto.dart';

class CarrinhoDeCompras {
  List<Produto> carrinho = [];

  void adicionarProduto(Produto prod) {
    carrinho.add(prod);
  }

  double calcularTotal() {
    double soma = 0;
    for (int i = 0; i < carrinho.length; i++) {
      soma += carrinho[i].preco;
    }

    return soma;
  }

  void exibirCarrinho() {
    print("--- Itens no Carrinho ---");
    for (int i = 0; i < carrinho.length; i++) {
      print("- ${carrinho[i].nome}: ${carrinho[i].preco}");
    }
    print("-------------------------");
    print("Total do carrinho: ${calcularTotal()}");
  }
}
