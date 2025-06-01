import 'dart:io';

void main(){
  String nome;
  String idade;
  String cidade;

  print("Digite seu nome:");
  nome= stdin.readLineSync() ?? "Sem informação";
  print("Digite sua idade:");
  idade = stdin.readLineSync() ?? "Sem informação";
  print("Onde mora:");
  cidade = stdin.readLineSync() ?? "Sem informação";

  String vf = '$nome tem $idade e mora em $cidade';

  print(vf);

}