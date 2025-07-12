import 'package:excode_5/services/status_pedido.dart';

abstract class Produto {
  String get codigo;
  double get preco;
  int get quantidade;
  String get nome;
  String get tipo;

  Map<String, dynamic> toJson();
}


class Pedido {
  final List<Produto> produtos;
  StatusPedido status;

  Pedido({required this.produtos}) : status = StatusPedido.PENDENTE;
}
