import 'dart:io';

void main(List<String> args) {
  stdout.writeln("Digite o 1° numero:");
  double numero1 = double.parse(stdin.readLineSync()!);
  ///Pede para o usuário entrar com o 1° numero
  
  stdout.writeln("Digite o 2° numero:");
  double numero2 = double.parse(stdin.readLineSync()!);
  ///Pede para o usuário entrar com o 2° numero

  if(numero1>numero2){
    stdout.writeln("$numero1 é maior numero!");

  } else if(numero2>numero1){
    stdout.writeln("$numero2 é maior numero!");
  } else {
    stdout.writeln("Números iguais!");
  }
  ///verifica qual o maior numero ou se são iguais
}