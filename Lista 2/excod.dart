import 'dart:io';

void main() {
  String valor1, valor2;

  print("Digite um valor:");
  valor1 = stdin.readLineSync() ?? "0";
  double n1 = double.tryParse(valor1) ?? 0;
  print("Digite um segundo valor:");
  valor2 = stdin.readLineSync() ?? "0";
  double n2 = double.tryParse(valor2) ?? 0;

  //soma
  double resultado = n1 + n2;
  print("Soma: $resultado");

  //subtração
  double sub;
  if (n1 > n2) {
    sub = n1 - n2;
    print("Subtração: $sub");
  } else {
    sub = n2 - n1;
    print("Subtração: $sub");
  }

  //multiplicação
  double mult = n1 * n2;
  print("Multiplicação: $mult");

  //divisão
  if(n2!=0){
    double div = n1 / n2;
    print("Divisão: $div");
  }else{
    print("Não eh possivle fazer divisão por 0");
  }

}
