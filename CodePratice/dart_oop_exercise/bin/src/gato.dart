import 'animais.dart';

class Gato extends Animais {
  String cor;
  String nome;
  int idade;

  Gato({required this.nome,required this.cor,required this.idade, peso, patas}): super(peso: peso, patas: patas);
}