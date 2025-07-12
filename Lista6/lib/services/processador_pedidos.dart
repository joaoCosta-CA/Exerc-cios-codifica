import 'package:excode_5/services/status_pedido.dart';
import 'package:excode_5/models/produto.dart';

class ProcessadorPedidos {
  Future<void> processar({
    required Pedido pedido,
    required Function((bool, String)) onComplete,
  }) async {
    if (pedido.produtos.isEmpty) {
      throw PagamentoException(
        'Pagamento não pode ser processado para um carrinho vazio.',
      );
    }

    await Future.delayed(Duration(seconds: 3));
    pedido.status = StatusPedido.PROCESSANDO;
    onComplete((true, 'Pedido processado e pronto para envio!'));
  }
}
