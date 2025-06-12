import 'package:excod/excode2lib.dart';

void main(){
    Produto produto1 = Produto(codigo:'12345', preco:1250, nome:'Jose', desconto:10);
    Produto produto2 = Produto(codigo:'6789', preco:3500, nome:'Picanha', desconto:20);

    print(produto1.exibirOriginal());
    print(produto1.exibirDetalhe());
    print('\n');
    print(produto2.exibirOriginal());
    print(produto2.exibirDetalhe());
    print("Total de Produtos Criados: ${Produto.TotalDeProdutos}");
}