enum StatusPedido {
  PENDENTE,
  PROCESSANDO,
  ENVIADO,
  ENTREGUE,
  CANCELADO,
  FALHOU;
}

class PagamentoException implements Exception {
  final String mensagem;
  PagamentoException(this.mensagem);
}

