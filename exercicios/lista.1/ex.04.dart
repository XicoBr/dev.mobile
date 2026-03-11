import 'dart:ffi';
import 'dart:io';


void main()
{
    int novo_id = 0;
    List<int> id_motorista = [];
    Map<int, double> multas = {};
    String set_id_motorista; 
  
  do {
    

    print("Id motorista: ");
    novo_id = int.parse(stdin.readLineSync()!);

    if (novo_id == 0)
    {
      print("Saindo do programa.");
      continue;
      
    }
    if ((novo_id < 1 && novo_id != 0) || novo_id > 4327)
    {
      print("Numero de carteira inválido! Por favor, tente novamente.");
      continue;
    }
    
    if(id_motorista.contains(novo_id))
    {
      print("Id existente! Tente novamente.");
      continue;
    }
    id_motorista.add(novo_id);

  } while(novo_id >= 1 && novo_id <= 4327);

  int tamanhoLista = id_motorista.length;

  for (int numId in id_motorista){
    print("Id: $numId");
  }
  print("Total id: $tamanhoLista");

}