void main(){
  double celsius=10.0;
  final fahrenheit= (celsius * (9 / 5)) + 32;
  double Celsius =(fahrenheit-32)*(5/9);

  print("Valor Celsius original $celsius°C\nValor em Fahrenheit $fahrenheit°F\nValor reconvertido $Celsius°C");
}