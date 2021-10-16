import 'dart:io';

main() {
 calculaIndice(pegaIndice());
}

double pegaIndice(){
  print("Digite o indice de poluição da cidade:");
  return double.parse(stdin.readLineSync()!);
}

void calculaIndice(double indice){
  if (indice<0.30) {
    print('O nivel de poluição está okay');
    
  } else if (indice>0.29 && indice<0.40) {
    print('As industrias do grupo 1 devem ser fechadas!');

  } else if(indice>0.39 && indice<0.50){
    print('As industrias do grupo 1 e 2 devem ser fechadas!');
    
  } else if(indice>0.49){
    print('As industrias de todos os grupos devem ser fechadas!');
  }
}