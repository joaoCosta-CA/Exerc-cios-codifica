abstract class Produto {
  String get codigo;
  double get preco;
  int get quantidade;
  String get nome;
  String get tipo;

  Map<String, dynamic> toJson();
}
