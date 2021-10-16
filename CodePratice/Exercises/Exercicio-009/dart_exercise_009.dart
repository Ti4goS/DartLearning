import 'dart:io';
import 'dart:core';

main(List<String> args) {
  getLadosTriangulo();
}

void getLadosTriangulo() {
  List<double> lados = [];

  for (var i = 0; i < 3; i++) {
    print("Digite o ${i + 1}° do triangulo:");
    lados.insert(i, double.parse(stdin.readLineSync()!));
  }

  imprimeTipo(tipoTriangulo(lados));
}

int tipoTriangulo(List<double> lados) {
  int contador = 0;

  if(lados[0]==lados[1] && lados[0]==lados[2]){
    contador = 3;
  } else if(lados[0]!=lados[1] && lados[0]!=lados[2] && lados[1]!=lados[2]){
    contador=1;
  } else{
    contador=2;
  }

  return contador;
}

void imprimeTipo(int tipo){
  switch (tipo) {
    case 1:
      print("O Triangulo é escaleno");
      break;
    
    case 2:
      print("O triangulo é isóceles");
      break;
    
    case 3:
      print("O triangulo é equilátero");
      break;
  }
}
