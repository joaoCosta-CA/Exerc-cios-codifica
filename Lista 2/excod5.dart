void main(){
  String valorA= "25";
  String valorB= "50.5";

  double n1= double.tryParse(valorA) ?? 0.0;
  double n2= double.tryParse(valorB) ?? 0.0;

  var soma=n1+n2;
  print(soma);
}