import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/Calculadora.dart';
import 'package:calculadora_imc/NomeInvalido.dart';
import 'package:calculadora_imc/NumeroInvalido.dart';
import 'package:calculadora_imc/Pessoa.dart';
import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;

void main(List<String> arguments) {
  print("Digite seu nome");
  var line = stdin.readLineSync(encoding: utf8);

  Pessoa p = new Pessoa();
  Calculadora calc = new Calculadora();

  try {
    if (line.toString().trim() == "" || line == null) {
      throw NomeInvalidoException();
    } else {
      p.setNome(line);
      var line2;
      var line3;
      print("Digite seu peso em KG");
      line2 = stdin.readLineSync(encoding: utf8);
      if (line2.toString().trim() == "0" ||
          line2.toString().trim() == "0.0" ||
          line2.toString().trim() == "") {
        throw NumeroInvalidoException();
      } else {
        print("Digite sua altura em Metros");
        line3 = stdin.readLineSync(encoding: utf8);
        if (line3.toString().trim() == "0" ||
            line3.toString().trim() == "0.0" ||
            line3.toString().trim() == "") {
          throw NumeroInvalidoException();
        }
      }

      try {
        double number1 = double.parse(line2 ?? "");
        double number2 = double.parse(line3 ?? "");
        p.setPeso(number1);
        p.setAltura(number2);

        print(calc.Calcular(p));
      } catch (NumeroInvalidoException) {
        print(NumeroInvalidoException);
      }
    }
  } catch (NomeInvalidoException) {
    print(NomeInvalidoException);
  }
}
