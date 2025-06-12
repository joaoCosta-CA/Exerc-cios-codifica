import 'package:excod/excode5.2.dart';
import 'package:excod/excode5.dart';

void main(){

  var eletronico = ProdutoEletronico(
    codigo: 'E10',nome: 'Tv Smart', preco: 1250.50,garantiaMese: 12
  );

  var alimento = ProdutoAlimenticio(codigo: 'F30', nome: 'Frango Resfriado', preco: 35.60, dataValidade: '25/04/2026');

  eletronico.exibirDetalhes();
  print("\n");
  alimento.exibirDetalhes();
}