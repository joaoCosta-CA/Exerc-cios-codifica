import "dart:io";

double media(double a, double b, double c){
  double media;
  if(a>10.0 || b>10.0 || c>10.0){
    return 0;
  }else{
    media=(a+b+c)/3;
    return media;
  }

}

void main(){
 String n1,n2,n3;

 print("Digite o valor da primeira nota");
 n1= stdin.readLineSync() ?? '0';
 double nota1= double.tryParse(n1) ?? 0;

 print("Digite o valor da segunda nota");
 n2= stdin.readLineSync() ?? '0';
 double nota2= double.tryParse(n2) ?? 0;

 print("Digite o valor da terceira nota");
 n3= stdin.readLineSync() ?? '0';
 double nota3= double.tryParse(n3) ?? 0;

 double vf = media(nota1,nota2,nota3);

 if(vf==0){
  print("Notas invalidas, coloque as notas entre 0 e 10!");
 }else{
  print("Media= $vf");
 }
}

