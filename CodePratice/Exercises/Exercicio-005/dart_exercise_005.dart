import 'dart:io';

main(List<String> args) {

  double resultado;

  stdout.writeln("Digite sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  ///entra com a altura da pessoa

  stdout.writeln("Digite seu sexo: (MASCULINO/FEMININO)");
  String sexo = stdin.readLineSync()!;
  ///entra com o sexo da pessoa

  if (sexo=="MASCULINO") {
    resultado = 72.7*altura-58;
  } else {
    resultado = 62.1*altura-44.7;
  }
  ///calcula o peso ideal dependendo do sexo

  stdout.writeln("O peso ideal para sua altura é $resultado");
  ///imprime o resultado
}