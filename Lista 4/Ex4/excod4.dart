import 'package:excod/excode4lib.dart';
import 'package:excod/excode4.2lib.dart';

void main() {
  Produto produto1 = Produto(
    codigo: '12345',
    preco: 1250,
    nome: 'Jose',
  );
  Produto produto2 = Produto(
    codigo: '6789',
    preco: 3500,
    nome: 'Picanha',
  );

  var carrinho=CarrinhoDeCompras();
  carrinho.adicionarProduto(produto1);
  carrinho.adicionarProduto(produto2);

  carrinho.exibirCarrinho();
}
