import 'Pessoa.dart';

class Calculadora {
  String Calcular(Pessoa pessoa) {
    var r = pessoa.getPeso()! / (pessoa.getAltura()! * pessoa.getAltura()!);

    if (r < 16) {
      return "Magreza Grave";
    } else if (r >= 16 && r < 17) {
      return "Magreza Moderada";
    } else if (r >= 17 && r < 18.5) {
      return "Magreza Leve";
    } else if (r >= 18.5 && r < 25) {
      return "Saudavel";
    } else if (r >= 25 && r < 30) {
      return "Sobrepeso";
    } else if (r >= 30 && r < 35) {
      return "Obesidade Grau I";
    } else if (r >= 35 && r < 40) {
      return "Obesidade Grau II (Severa)";
    } else if (r >= 40) {
      return "Obesidade Grau III (MOrbida)";
    } else {
      return "";
    }
  }
}
