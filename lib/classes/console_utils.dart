import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerString(String texto) {
    print(texto);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double lerDouble(String texto) {
    var numero = lerString(texto);
    if (numero == "S" || numero == "s") {
      exit(0);
    }
    try {
      return double.parse(numero);

    } catch (e) {
      print("O número digitado não é válido");
      return lerDouble(texto);
    }
  } 
}