import 'dart:io';
import 'package:excode_5/models/produto_alimenticio.dart';
import 'package:excode_5/models/produto_eletronico.dart';
import 'package:excode_5/services/carrinho_de_compras.dart';
import 'package:excode_5/services/status_pedido.dart';
import 'package:excode_5/models/produto.dart';
import 'package:excode_5/services/processador_pedidos.dart';


void main() async {
  final p1 = ProdutoEletronico(
    codigo: 'E001',
    nome: 'Smartphone',
    preco: 2999.90,
    quantidade: 12,
    garantiaMes: 12,
  );

  final p2 = ProdutoAlimenticio(
    codigo: 'A001',
    nome: 'Biscoito',
    preco: 3.50,
    quantidade: 50,
    dataValidade: '10/10/2025',
  );

  final carrinho = CarrinhoDeCompras();
  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);
  carrinho.exibirCarrinho();

  final meuPedido = Pedido(produtos: carrinho.carrinho);
  print('Status inicial do pedido: ${meuPedido.status.name}');

  final processador = ProcessadorPedidos();

  print('Enviando pedido para processamento...');

  try {
    await processador.processar(
      pedido: meuPedido,
      onComplete: (resultado) {
        print(
          'Callback recebido! Sucesso: ${resultado.$1}, Mensagem: ${resultado.$2}',
        );
        print('Status atual do pedido: ${meuPedido.status.name}');
      },
    );
  } on PagamentoException catch (e) {
    print('Ocorreu um erro de pagamento: ${e.mensagem}');
  } catch (e) {
    print('Ocorreu um erro inesperado: $e');
  }

  final pedidoVazio = Pedido(produtos: []);

  print('\nTestando pedido vazio...');

  try {
    await processador.processar(
      pedido: pedidoVazio,
      onComplete: (resultado) {
        print('Este callback não deve ser chamado para pedido vazio');
      },
    );
  } on PagamentoException catch (e) {
    print('Ocorreu um erro de pagamento: ${e.mensagem}');
  }
}



