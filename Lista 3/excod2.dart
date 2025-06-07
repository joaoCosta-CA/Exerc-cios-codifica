import 'dart:io';

void tabuada(int a){
  int tab;

  //looping para fazer o calculo da tabuada do 1 até o 10\\
  for(int i=1;i<=10;i++){

    //calculo da multiplicação\\
    tab=a*i;

    //printa a tabuada no formato 'numero x multiplicador = resultado'\\
    print("$a X $i = $tab");
  }
}
void main(){
  String n1;

  //receber e ler o numero que irá gerar a tabuada\\
  print("Digite qual numero deseja saber a tabuada");
  n1= stdin.readLineSync() ?? '0';
  int number= int.tryParse(n1) ?? 0;

  //chama a função que irá fazer todo o processo de calcular e mostrar a tabuada no console\\
  tabuada(number);
}