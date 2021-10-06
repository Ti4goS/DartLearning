import 'dart:io';
import 'dart:math';

main(List<String> args) {
  stdout.writeln("Digite o 1° numero: ");
  double numero1 = double.parse(stdin.readLineSync()!);
  ///Lê o 1° numero digitado pelo usuário 

  stdout.writeln("Digite o 2° numero: ");
  double numero2 = double.parse(stdin.readLineSync()!);
  ///Lê o 2° numero digitado pelo usuário 

  stdout.writeln("Digite o 3° numero: ");
  double numero3 = double.parse(stdin.readLineSync()!);
  ///Lê o 3° numero digitado pelo usuário 
  
  if (numero1>0) {
    stdout.writeln(sqrt(numero1));
  } else {
    stdout.writeln(pow(numero1, 2));
  }
  ///condições estabelecidas para o 1° numero

  if (numero2>10 && numero2<100) {
    stdout.writeln("Número está entre  10 e 100 – intervalo permitido");
  }
  ///condições estabelecidas para o 2° numero

  if (numero3<numero2) {
    stdout.writeln(numero2-numero3);
  } else {
    stdout.writeln(numero3+1);
  }
  ///condições estabelecidos para o 3° numero
}