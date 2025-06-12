class Produto {
  static int _totalDeProdutos=0;
  String codigo;
  double preco;
  String nome;
  double desconto;

  Produto({required this.codigo, required this.nome, required this.preco, required this.desconto}){
    _totalDeProdutos++;
  }


  //-------------------------------------Exibir Detalhes Originais---------------------------------------------------------\\
  String exibirOriginal(){
    return '--Detalhes Originais--\nCodigo: $codigo\nNome: $nome\nPreco: $preco';
  }

  //-------------------------------------Exibir Detalhes Após desconto------------------------------------------------------\\
  String exibirDetalhe(){
    if(desconto<=0){
      return '-- Detalhes do Produto--\nDesconto: $desconto%\nCodio: $codigo\nNome: $nome\nPreco: $preco';
    }
    double precoFinal=aplicarDesconto(preco, desconto);
    return '-- Detalhes do Produto--\nDesconto: $desconto%\nCodio: $codigo\nNome: $nome\nPreco: $precoFinal';
  }

  //-----------------------------------------------------------------------------------------------------------------------\\
  double aplicarDesconto(double preco, double desconto){
    if(desconto<=0){
      print("Nao tem desconto");
      return preco;
    }
    desconto=desconto/100;

    double aux;
    aux = preco * desconto;
    preco = preco - aux;
    return preco; 
  }

  //----------------------------------------------------------------------------------------------------------------------------\\
  static int get TotalDeProdutos => _totalDeProdutos;
}
