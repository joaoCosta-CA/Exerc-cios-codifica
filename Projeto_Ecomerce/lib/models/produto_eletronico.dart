import 'package:excode_5/mixins/exibirDetalhes.dart';
import 'package:excode_5/mixins/rastreavel.dart';
import 'package:excode_5/models/produto.dart';

class ProdutoEletronico with Rastreavel,Exibir implements Produto {
  int garantiaMes;
  final String _codigo;
  final String _nome;
  final double _preco;
  final int _quantidade;

  ProdutoEletronico({
    required String codigo,
    required String nome,
    required double preco,
    required int quantidade,
    required this.garantiaMes,
  }) :_codigo=codigo,
      _nome=nome,
      _preco=preco,
      _quantidade=quantidade;

  @override
  String get nome =>_nome;

  @override
  String get codigo=>_codigo;

  @override
  double get preco=>_preco;

  @override
  int get quantidade=>_quantidade;

  @override 
  String get tipo=>"Eletronico";


  @override
   Map<String, dynamic> toJson() {
    return {
      'codigo': _codigo,
      'nome': _nome,
      'preco': _preco,
      'quantidade': _quantidade,
      'garantiaMes': garantiaMes,
      'tipo': tipo,
    };
  }
}
