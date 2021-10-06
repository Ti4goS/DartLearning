import 'dart:io';

void main(List<String> args) {
  
  stdout.writeln("Digite um numero qualquer:");
  double numeroEntrada = double.parse(stdin.readLineSync()!);
  ///Pede para o usuário digitar um numero e lê esse numero
  
  if (numeroEntrada%2==0) {
    stdout.writeln("O numero $numeroEntrada é par!");
  } else {
    stdout.writeln("O numero $numeroEntrada é impar!");
  }
  ///Verifica se o numero é par ou impar
  
  if (numeroEntrada>0) {
    stdout.writeln("O Numero $numeroEntrada é positivo!");
  } else {
    stdout.writeln("O Numero $numeroEntrada é negativo!");
  }
  ///Verifica se o numero é positivo ou negativo
}