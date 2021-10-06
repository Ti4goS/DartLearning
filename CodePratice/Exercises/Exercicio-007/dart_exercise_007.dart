import 'dart:io';

main(List<String> args) {
  stdout.writeln("Digite a 1° nota do aluno(a):");
  double nota1 = double.parse(stdin.readLineSync()!);

  stdout.writeln("Digite a 2° nota do aluno(a):");
  double nota2 = double.parse(stdin.readLineSync()!);

  stdout.writeln("Digite a quantidade total de aulas ministradas pelo professor:");
  int aulasMinistradas = int.parse(stdin.readLineSync()!);

  stdout.writeln("Digite a quantidade de aulas assistidas pelo aluno: ");
  int aulasAssistidas = int.parse(stdin.readLineSync()!);

  int resultado = calculaAprovacao(nota1, nota2, aulasMinistradas, aulasAssistidas);

  if(resultado==1){
    stdout.writeln("Aprovado");
  } else{
    stdout.writeln("Reprovado");
  }
}

int calculaAprovacao(double nota1, double nota2, int cargohoraria, int presenca){
  double media=(nota1+nota2)/2;
  double aulasMinimas =cargohoraria*0.75;

  if(media>=6 && presenca>=aulasMinimas){
    return 1;
  }else{
    return 0;
  }
}