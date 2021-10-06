import 'dart:io';

void main(List<String> args) {
  
  stdout.writeln("Digite a idade do nadador: ");
  int idadeNadador = int.parse(stdin.readLineSync()!);

  defineCategoria(idadeNadador);
}

void defineCategoria(int idade){

  if(idade>4 && idade<8){
    stdout.writeln("Nadador faz parte da categoria INFANTIL A");

  } else if(idade>7 && idade<11){
    stdout.writeln("Nadador faz parte da categoria INFANTIL B");

  } else if(idade>10 && idade<14){
    stdout.writeln("Nadador faz parte da categoria JUVENIL A");

  } else if(idade>13 && idade<18){
    stdout.writeln("Nadador faz parte da categoria JUVENIL B");

  } else{
    stdout.writeln("Nadador faz parte da categoria SENIOR");
  }
}