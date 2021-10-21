import 'dart:io';

List<String> feira = [];
main(List<String> args) {
  menu(imprimeMenu());
}

cls(){
    print("\x1B[2J\x1B[0;0H");
}

int imprimeMenu(){
  print("=================================");
  print("====escolha a opção desejada=====");
  print("=================================");
  print("==== 1 - Adicionar Item a lista ====");
  print("==== 2 - Ver Itens da lista ====");
  print("==== 3 - Excluir Item da lista ====");
  print("==== 4 - Sair ====");
  print("=================================");

  return int.parse(stdin.readLineSync()!);
}

menu(int opcao){
  while(opcao!=4){

    switch (opcao) {

      case 1:
        adicionaFeira();
        break;
      
      case 2:
        imprimelista();
        break;
 
      case 3:
        excluirItem();
        break;
      
      case 4:
        print("saindo do jogo");
        break;
 
      default:
        cls();
        print("====OPÇÃO INVALIDA, DIGITE NOVAMENTE====\n");
    }

    if(opcao!=4){
      menu(imprimeMenu());
    }

  }
}

adicionaFeira(){
  cls();
  bool condicao = true;
    
  while (condicao) {
    print("====Digite um item:===="); 
    String text = stdin.readLineSync()!;
    cls();
    
    if(text=="sair"){
      condicao=false;
    }else{
      feira.add(text);
    }   
  }  
}

imprimelista(){
  cls();

  for (var items in feira) {
    print(items);
  }
}

excluirItem(){
  cls();

  for(var i = 0;i<feira.length;i++){
    print("$i - ${feira[i]}");
  }

  print("====selecione o que deseja remover====");
  int num = int.parse(stdin.readLineSync()!);
  feira.removeAt(num);

  imprimelista();
}