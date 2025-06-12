class Produto {
  late String _codigo;
  late double _preco;
  late String _nome;
  double desconto;
  static int _totalDeProdutos=0;

  Produto({
    required String codigo,
    required String nome,
    required double preco,
    required  this.desconto,
  }) {
    _totalDeProdutos++;
    _codigo=codigo;
    _preco=preco;
    _nome=nome;
  }


  //-------------------------------------Exibir Detalhes Originais---------------------------------------------------------\\
  String exibirOriginal() {
    return '--Detalhes Originais--\nCodigo: $codigo\nNome: $nome\nPreco: $preco';
  }

  //-------------------------------------Exibir Detalhes Após desconto------------------------------------------------------\\
  String exibirDetalhe() {
    if (desconto <= 0) {
      return '-- Detalhes do Produto--\nDesconto: $desconto%\nCodio: $codigo\nNome: $nome\nPreco: $preco';
    }
    double precoFinal = aplicarDesconto(preco, desconto);
    return '-- Detalhes do Produto--\nDesconto: $desconto%\nCodio: $codigo\nNome: $nome\nPreco: $precoFinal';
  }

  //-----------------------------------------------------------------------------------------------------------------------\\
  double aplicarDesconto(double preco, double desconto) {
    if (desconto <= 0) {
      print("Nao tem desconto");
      return preco;
    }
    desconto = desconto / 100;

    double aux;
    aux = preco * desconto;
    preco = preco - aux;
    return preco;
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

  set preco(double novoPreco) {
    if (novoPreco < 0) {
      print(
        "Erro: O produto nao pode ter valor negativo. O valor $_preco foi mantido.",
      );
    } else {
      print("Preco antigo: $_preco");
      _preco = novoPreco;
      print("Peco novo: $novoPreco");
    }
  }

} 
