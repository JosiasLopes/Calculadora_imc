class NomeInvalidoException implements Exception {
  String error() => "Nome Invalido";

  @override
  String toString() {
    // TODO: implement toString
    return "NomeInvalidoException: ${error()}";
  }
}
