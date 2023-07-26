import 'dart:io';

void main() {
  print("Qual seu nome?");
  String? nome = stdin.readLineSync();
  print("Qual a sua idade?");
  String? input = stdin.readLineSync();
  if (input != null) {
    int idade = int.parse(input);
    print("Ano que vem sua idade será ${idade + 1} anos.");
  } else {
    print("Não foi possível calcular o valor da idade");
  }
  print("Qual a sua altura?");
  String? altura = stdin.readLineSync();
  double alturaEmDouble = double.tryParse(altura ?? "0") ?? 0.0;
  print("Sua altura é $alturaEmDouble metros.");

  print("Qual o seu peso?");
  String? peso = stdin.readLineSync();
  double pesoEmDouble = double.tryParse(peso ?? "0") ?? 0.0;
  print("Seu peso é ${pesoEmDouble.toString()}.");

  double imc = calcularIMC(pesoEmDouble, alturaEmDouble);
  print("Seu IMC é: ${imc.toStringAsFixed(2)}");

  if (imc < 18.5) {
    print("Seu IMC indica que você está abaixo do peso.");
  } else if (imc < 24.9) {
    print("Seu IMC está dentro da faixa considerada saudável.");
  } else if (imc < 29.9) {
    print("Seu IMC indica que você está com sobrepeso.");
  } else if (imc < 34.9) {
    print("Seu IMC indica que você está com obesidade grau 1.");
  } else if (imc < 39.9) {
    print("Seu IMC indica que você está com obesidade grau 2.");
  } else {
    print("Seu IMC indica que você está com obesidade grau 3 ou mórbida.");
  }
}

double calcularIMC(double pesoEmDouble, double alturaEmDouble) {
  if (alturaEmDouble > 0) {
    return pesoEmDouble / (alturaEmDouble * alturaEmDouble);
  } else {
    return 0.0;
  }
}
