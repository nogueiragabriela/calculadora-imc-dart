import 'package:calculadora_imc_dart/calculadora_imc_dart.dart' as calculadora_imc_dart;
import 'package:calculadora_imc_dart/classes/console_utils.dart';

void main(List<String> arguments) {
  print("Bem vindes a Calculadora IMC");
  var nome = ConsoleUtils.lerString("Digite o seu nome");
  var peso = ConsoleUtils.lerDouble("Digite o seu peso em kg ou S para sair");
  var altura = ConsoleUtils.lerDouble("Digite a sua altura em metros ou S para sair");
  
  try {
    calculadora_imc_dart.classificacaoPorIMC(nome, peso, altura);
  } catch (e) {
    print("Ocorreu um erro $e");
  } finally {
    print("Saindo da Calculadora IMC ...");
  }
}
 

