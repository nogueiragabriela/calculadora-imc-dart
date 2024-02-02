import 'package:calculadora_imc_dart/calculadora_imc_dart.dart';
import 'package:calculadora_imc_dart/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('criarPerfil', () {
    var perfil = criarPerfil("Pessoa 1", 78, 1.65);
    expect(perfil, isA<Pessoa>());
    expect(perfil.getNome(), equals("Pessoa 1"));
    expect(perfil.getPeso(), equals(78.0));
    expect(perfil.getAltura(), equals(1.65));
  });

  test('calcularIMC', () {
    expect(
      calcularIMC("Pessoa 1", 78, 1.65), 
      {"nome": "Pessoa 1", "imc": "28.65"});
  });

  test('criaPerfil() passando 0', () {
    expect(
      () => criarPerfil("Pessoa 2", 0, 0), 
      throwsA(TypeMatcher<ArgumentError>()));
  });

  test('criaPerfil() passando valor negativo', () {
    expect(
      () => criarPerfil("Pessoa 3", -80, -1.70), 
      throwsA(TypeMatcher<ArgumentError>()));
  });
}
