import 'dart:core';

class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  void setNome(String nome) {
    this._nome = nome;
  }

  void setPeso(double peso) {
    this._peso = peso;
  }

  void setAltura(double altura) {
    this._altura = altura;
  }

  double? getPeso() {
    return this._peso;
  }

  double? getAltura() {
    return this._altura;
  }

  String? getNome() {
    return this._nome;
  }
}
