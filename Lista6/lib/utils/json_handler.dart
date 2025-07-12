import 'dart:convert';
import 'dart:io';

Future<void> salvarCarrinhoEmJson(
  String caminho,
  List<Map<String, dynamic>> carrinho,) async {
  final file = File(caminho);
  final jsonString = jsonEncode(carrinho);
  await file.writeAsString(jsonString);
}

Future<List<Map<String, dynamic>>> carregarCarrinhoDeJson(
  String caminho,) async {
  final file = File(caminho);
  final jsonString = await file.readAsString();
  return List<Map<String, dynamic>>.from(jsonDecode(jsonString));
}
