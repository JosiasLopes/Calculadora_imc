class NumeroInvalidoException implements Exception {
  String error() => "O numero não pode ser zero!, ou estar vazio";

  @override
  String toString() {
    // TODO: implement toString
    return "NumeroInvalidoException: ${error()}";
  }
}
