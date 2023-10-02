import 'package:calculadora_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {

  test('calculo IMC', (){
    final pessoa = Pessoa('Kaynan', 80, 170);
    expect(pessoa.calcImc(), equals(27.68));
  });

  group('status IMC', () {
    test('Deve retornar "Magreza grave" para um IMC < que 16', () {
      final pessoa = Pessoa("Kaynan", 40, 170); // Crie uma instância da sua classe Pessoa
      expect(pessoa.statusImc(), equals('Magreza grave'));
    });

    test('Deve retornar "Magreza moderada" para um IMC >= que 16 && < 17', () {
      final pessoa = Pessoa("Kaynan", 48, 170); // Crie uma instância da sua classe Pessoa
      expect(pessoa.statusImc(), equals('Magreza moderada'));
    });
    
    test('Deve retornar "Magreza leve" para um IMC >= que 17 && < 18.5', () {
      final pessoa = Pessoa("Kaynan", 50, 170); // Crie uma instância da sua classe Pessoa
      expect(pessoa.statusImc(), equals('Magreza leve'));
    });

     test('Deve retornar "Saudável" para um IMC >= que 18.5 && < 25', () {
      final pessoa = Pessoa("Kaynan", 60, 170); // Crie uma instância da sua classe Pessoa
      expect(pessoa.statusImc(), equals('Saudável'));
    });

     test('Deve retornar "Sobrepeso" para um IMC >= que 25 && < 30', () {
      final pessoa = Pessoa("Kaynan", 80, 170); // Crie uma instância da sua classe Pessoa
      expect(pessoa.statusImc(), equals('Sobrepeso'));
    });

     test('Deve retornar "Obesidade Grau I" para um IMC >= que 30 && < 35', () {
      final pessoa = Pessoa("Kaynan", 90, 170); // Crie uma instância da sua classe Pessoa
      expect(pessoa.statusImc(), equals('Obesidade Grau I'));
    });

     test('Deve retornar "Obesidade Grau II (Severa)" para um IMC >= que 35 && < 40', () {
      final pessoa = Pessoa("Kaynan", 110, 170); // Crie uma instância da sua classe Pessoa
      expect(pessoa.statusImc(), equals('Obesidade Grau II (Severa)'));
    });

    test('Deve retornar "Obesidade Grau III (Mórbida)" para um IMC > 40', () {
      final pessoa = Pessoa("Kaynan", 120, 170); // Crie uma instância da sua classe Pessoa
      expect(pessoa.statusImc(), equals('Obesidade Grau III (Mórbida)'));
    });

  });
  
}



