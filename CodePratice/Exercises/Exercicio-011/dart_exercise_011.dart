import 'dart:io';
import 'dart:math';

main() {
  calculaJurosComposto();
}

void calculaJurosComposto(){
  print('Digite o tempo de investimento em anos:');
  int tempo = int.parse(stdin.readLineSync()!);

  print('Digite o investimento:');
  double investimento = double.parse(stdin.readLineSync()!);

  print('Digite a taxa de juros em %:');
  double juros = double.parse(stdin.readLineSync()!);

  calculaMontante(tempo, investimento, juros);
}

void calculaMontante(int tempo, double capInicial, double juros){
  print('Após $tempo anos você terá ${(capInicial*(pow(1+(juros/100),tempo))).toStringAsFixed(2)} Reais');
}