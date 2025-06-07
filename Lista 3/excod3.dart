import 'dart:io';

//função para salvar a lista\\
void salvarListaEmArquivo(List<String>lista) async{
  final file= File('lista.txt');

  String conteudo = lista.join('\n');

  await file.writeAsString(conteudo);

  print("Arquivo criado!");
}

void main(){
  List<String> lista = [];
  String nome;

  //Pedir para o usuário colocar itens na lista\\
  for(int i=0;i<1000;){
    print("Digite o nome que deseja colcoar na lista(digite 'fim' para parar')");
    nome=stdin.readLineSync() ?? "Sem item";
    //acaba se o usuário digitar 'fim'\\
    if(nome=='fim'){
      break;
    }else{
    lista.add(nome);
    }
  }

  //chama função para salva a lista em arquivo\\
  salvarListaEmArquivo(lista);
  
}