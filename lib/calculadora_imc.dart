import 'dart:convert';
import 'dart:io';
import '/models/pessoa.dart';

void execute(){ 
  print("{-----------------Calculadora IMC--------------------}");
  print("");

  String nome;
  
  try {
    print("Digite seu nome:");
    var line = stdin.readLineSync(encoding: utf8);
    if (line == null || line == ""){
      throw FormatException("Nome inválido");
    }

    //Validando campo para aceitar somente Letras, futuramente criar uma função
    for (var letra in line.split('')) {
      if (!letra.contains(RegExp(r'[A-Za-z]'))) {
        throw FormatException("Nome inválido");
      }
    }
  
  nome =  line;
  print("");
 
  print("Informe seu peso: $nome");
  line = stdin.readLineSync(encoding: utf8);
  if (line == null || line == " " || line == ""){
      throw FormatException("Peso inválido");
  }

  for (var letra in line.split('')) {
      if (letra.contains(RegExp(r'[A-Za-z]'))) {
        throw FormatException("Peso inválido");
      }
    }

  var peso = double.tryParse(line) ?? 0.0;
  print("");

  print("Informe sua Altura: $nome (em Centímetros)");
  line = stdin.readLineSync(encoding: utf8);
  if (line == null || line == " " || line == ""){
      throw FormatException("Altura inválida");
  }

  for (var letra in line.split('')) {
      if (letra.contains(RegExp(r'[A-Za-z]'))) {
        throw FormatException("Altura inválida");
      }
    }

  var altura = double.tryParse(line) ?? 0.0;

  var pessoa = Pessoa(nome, peso, altura);

  var imc = pessoa.calcImc();
  var statusImc = pessoa.statusImc();
  print("----------------------------------------------");
  print("Nome: ${pessoa.getNome()}");
  print("Peso: ${pessoa.getPeso()}");
  print("Altura: ${pessoa.getAltura(altura)}");
  print("IMC: $imc");
  print("");
  print("Classificação do Paciente: $statusImc");
} catch (e) {
  print("Erro: ${e.toString()}");
  return;
}

}