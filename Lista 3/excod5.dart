import 'dart:io';


//aidciona tarefas quando o usuário escohe a opção 1\\
List<String> addTarefa(List<String>lista){
      print("Qual tarefa deseja adicionar");
      String tarefa = stdin.readLineSync() ?? '0';
      lista.add(tarefa);

  return lista;

}


//lista as opções que já estão na lista quando escolhida a opção 2\\
void listTarefa(List<String>lista){
  if(lista.isEmpty){
    print("Lista sem tarefas, adicione tarefas");
  }
  int i=1;
  print("Tarefas:");
  for(String numero in lista){
    print("$i-$numero");
    i++;
  }
}


//função de quando o usuários escolhe a opção 3 e maraca como concluído\\
List<String>markConc(List<String> lista) {
  if (lista.isEmpty) {
    print("Nenhuma tarefa para marcar.");
    exit(0);
  }

  listTarefa(lista); 

  print("Escolha o número da tarefa que deseja marcar como 'concluída':");
  String? entrada = stdin.readLineSync();
  int? indice = int.tryParse(entrada ?? '');

  if (indice == null || indice < 1 || indice > lista.length) {
    print("Número inválido.");
    exit(0);
  }

  lista[indice - 1] += " (concluído)";
  print("Tarefa marcada como concluída!");

  return lista;
}

//gera o arquivo quando esclhida a opção 4\\
void acabar(List<String>lista) async{
  final file= File('tarefas.txt');

  String conteudo= lista.join('\n');
  await file.writeAsString(conteudo);
  print("Arquivo gerado com sucesso!");

}


void main(){
    String opcao;
    List<String> lista= [];

  //pede para o usuário escolher qual opção deseja\\
  for(int i=0;i<10;){
    print("Escolah uma opcao:\n1-Adicionar Tarefa\n2-Listar tarefas\n3-Marcar taferafa como concluida\n4-Sair");
    opcao = stdin.readLineSync() ?? '0';
    int op = int.tryParse(opcao) ?? 0;

    //condicionais para cada escolha\\
    if (op == 4) {
      acabar(lista);
      break;
    }else if(op==1){
      addTarefa(lista);
    }else if(op==2){
      listTarefa(lista);
    }else if(op==3){
      markConc(lista);
    }
  }
}