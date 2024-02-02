import 'dart:io';
import 'dart:math';

import 'package:calculadora_imc_dart/classes/pessoa.dart';

dynamic criarPerfil(String nome, double peso, double altura) {
  if (peso <= 0 || altura <= 0) {
    throw ArgumentError("O número digitado para peso e/ou altura não pode ser igual ou menor do que zero.");
  }
  var perfil = Pessoa(nome, peso, altura);
  return perfil;
}

Map<String, dynamic> calcularIMC(String nome, double peso, double altura) {
  var pessoa = criarPerfil(nome, peso, altura);
  var imc =  pessoa.getPeso() / pow(pessoa.getAltura(), 2);
  imc = imc.toStringAsFixed(2);

  return {"nome": pessoa.getNome(), "imc": imc};
}

void classificacaoPorIMC(String nome, double peso, double altura) {
  var resultado = calcularIMC(nome, peso, altura);
  var resultadoPessoa = "Nome: ${resultado["nome"]} IMC: ${resultado["imc"]}";

  switch(double.parse(resultado["imc"])) {
    case < 16:
      print("$resultadoPessoa Classificação: Magreza grave");
      break;
    case < 17:
      print("$resultadoPessoa Classificação: Magreza moderada");
      break;
    case < 18.5:
      print("$resultadoPessoa Classificação: Magreza leve");
      break;
    case < 25:
      print("$resultadoPessoa Classificação: Saudável");
      break;
    case < 30:
      print("$resultadoPessoa Classificação: Sobrepeso");
      break;
    case < 35:
      print("$resultadoPessoa Classificação: Obesidade Grau I");
      break;
    case < 40:
      print("$resultadoPessoa Classificação: Obesidade Grau II (severa)");
      break;
    case >= 40:
      print("$resultadoPessoa Classificação: Obesidade Grau III (mórbida)");
      break;
    default:
      print("Não foi possível realizar o cálculo");
      exit(0);
  }
}
