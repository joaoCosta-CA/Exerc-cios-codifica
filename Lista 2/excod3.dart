import 'dart:io';

void main(){
   final orc;
   double item1=100.0;
   double item2=250.25;
   double item3=499.99;


    //Não entendi como era pra fazer com o orçamento, sorry kkkk

    print("Qual seu orcamento");
    orc =stdin.readLineSync() ?? '0';
    double orcamento = double.tryParse(orc) ?? 0;

    //soma_item
    double soma = item1+item2+item3;

    if(soma>orcamento){
      print("Orcamento insuficiente!");
      print("Valor dos produtos: $soma");
    }else{
      print("Orcamento suficiente");
      print("Valor dos produtos: $soma");
    }
}