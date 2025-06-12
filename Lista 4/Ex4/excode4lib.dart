class Produto {
  late String _codigo;
  late double _preco;
  late String _nome;
  static int _totalDeProdutos = 0;

  Produto({
    required String codigo,
    required String nome,
    required double preco,
  }) {
    _totalDeProdutos++;
    _codigo = codigo;
    _preco = preco;
    _nome = nome;
  }
  //----------------------------------------------------------------------------------------------------------------------------\\
  static int get totalDeProdutos => _totalDeProdutos;

  String get codigo {
    return _codigo;
  }

  double get preco {
    return _preco;
  }

  String get nome {
    return _nome;
  }
}



