import 'dart:io';

main(List<String> args) {

  int maxQNT = requestLength();
  ///recebe quantos numeros querem ser verificados pelo usuário
  
  calculaMenor(maxQNT);
  ///pega os numeros e verifica qual o menor
}

int requestLength(){
  stdout.writeln("Digite quantos numeros você quer verificar:");
  int maxQNT = int.parse(stdin.readLineSync()!);
  return maxQNT;
}

void calculaMenor(int length){
  int numero=0;
  int menor = 100;

  for (var i = 0; i < length; i++) {
    print("Digite o ${i+1}° numero:\n");
    numero = int.parse(stdin.readLineSync()!);

    if (numero<menor) {
      menor = numero;
    }
  }
  
  print("O menor numero digitado é $menor\n");
}
