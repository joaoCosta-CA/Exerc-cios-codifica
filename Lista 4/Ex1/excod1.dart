import 'package:excod/excodlib.dart';

void main(){

    Produto produto1 = Produto(codigo:'12345',nome:'Jogo',preco:'1200');
    Produto produto2 = Produto(codigo:'67890',nome:'Palhaco',preco:'300');

    print("--- Produto1 ---");
    print("Codigo: ${produto1.codigo}");
    print("Preco: ${produto1.preco}");
    print("Nome: ${produto1.nome}");
    print("\n");

    print("--- Produto 2 ---");
    print("Codigo: ${produto2.codigo}");
    print("Preco: ${produto2.preco}");
    print("Nomr: ${produto2.nome}");
}
