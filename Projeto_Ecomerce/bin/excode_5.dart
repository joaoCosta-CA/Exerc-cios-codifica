import 'dart:io';
import 'package:excode_5/models/produto_alimenticio.dart';
import 'package:excode_5/models/produto_eletronico.dart';
import 'package:excode_5/models/produto.dart';
import 'package:excode_5/mixins/exibirDetalhes.dart';
import 'package:excode_5/mixins/rastreavel.dart';
import 'package:excode_5/services/gerenciar_estoque.dart';
import 'package:excode_5/utils/json_handler.dart';

void main()async{

  Produto p1 = ProdutoEletronico(
    codigo: 'E001',
    nome: 'Smartphone',
    preco: 2999.90,
    quantidade: 12,
    garantiaMes: 12
  );

  Produto p2 = ProdutoAlimenticio(
    codigo: 'A001',
    nome: 'Biscoito',
    preco: 3.50,
    quantidade: 50,
    dataValidade: '10/10/2025',
  );

  (p1 as Exibir).exibirDetalhes();
  (p2 as Exibir).exibirDetalhes();
  (p1 as Rastreavel).gerarEtiquetaEnvio();
  
  GerenciarEstoque gerenciar = GerenciarEstoque();
  gerenciar.qntEstoque(p1, p1.quantidade);
  gerenciar.qntEstoque(p2, p2.quantidade);
  gerenciar.mostrarEstoque();
  gerenciar.adicionar();

  final path = '${Directory.current.path}/carrinho.json';
  await salvarCarrinhoEmJson(path, [p1.toJson(), p2.toJson()]);

  print('Arquivo JSON "carrinho.json" salvo com sucesso.');
}



