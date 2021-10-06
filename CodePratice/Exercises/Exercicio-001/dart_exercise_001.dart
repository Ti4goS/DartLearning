import 'dart:io';

void main() {

  double resultado =0;

  stdout.writeln("Digite um numero:");
  double? numero1 = double.parse(stdin.readLineSync()!);
  ///entra com o primeiro numero
  
  stdout.writeln("Digite o 2° numero:");
  double? numero2 = double.parse(stdin.readLineSync()!);
  //entra com o segundo numero

  if (numero1>numero2) {
    resultado = numero1-numero2;
    stdout.writeln("a diferença entre $numero1 e $numero2 eh $resultado");

  } else {
    resultado = numero2-numero1;
    stdout.writeln("a diferença entre $numero1 e $numero2 eh $resultado");
  }
}
