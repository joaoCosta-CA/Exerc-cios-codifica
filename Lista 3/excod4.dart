import 'dart:io';

//função que retorna um valor no futuro para o main\\
Future<void> lerConfiguracoes(final a) async{
  try{
    String arquivo= await a.readAsString();
    print(arquivo);
  }catch(e){
    print("Erro com o aqruivo $a");
  }
}

void main() async{
  
  //lê o o nome do arquivo para acha-lo\\
  print("Digite o nome do arquivo");
  String? nome=stdin.readLineSync() ?? 'sem aquivo';

  //cria um objeto do tipo 'File'\\
  final file=File(nome);

  //chama a funçao  de forma assíncrona\\
  await lerConfiguracoes(file);
}