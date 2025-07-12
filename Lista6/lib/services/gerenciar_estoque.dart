import 'package:excode_5/models/produto.dart';
import 'dart:io';

class GerenciarEstoque{
  Map<String, int> estoque={};

  void qntEstoque(Produto produto, int quantidade){
    estoque[produto.codigo]=quantidade;
  }

  void mostrarEstoque() {
    print("\n");
    estoque.forEach((codigo, qtd) {
      print(' [$codigo]: $qtd unidades');
    });
    print("\n");
  }

  void adicionar(){
    String verdade;
    String add;

      for (int i=0;i<1;) {
        print("Deseja adicionar alguma quantidade?\n1-Sim\n2-Nao");
        verdade = stdin.readLineSync() ?? '0';
        if (verdade == '2' || verdade == '0') {

          print("Sem adicao no estoque");
          break;
        } else if (verdade == '1') {

        print("Digite o código do produto que deseja adicionar estoque:");
        String codigo = stdin.readLineSync() ?? '';

        if (!estoque.containsKey(codigo)) {
          print("Produto com código '$codigo' não encontrado no estoque.");
          return;
        }

        print(("Quantos quer adicionar"));
        add = stdin.readLineSync() ?? '0';
        int add1 = int.tryParse(add) ?? 0;
        estoque[codigo] = (estoque[codigo] ?? 0) + add1;
        print("Quantidade adicionada com sucesso!");
      }
      mostrarEstoque();
    }

  }
}