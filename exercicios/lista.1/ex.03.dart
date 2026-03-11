import 'dart:io';

void main()
{
  const contador = 20;
  int idade = 0;
  int nota = 0;
  
  int totExc = 0;
  int idadeExc = 0;
  double mediaIdadeExc = 0;
  
  int totReg = 0;
  int totBom = 0;
  double bomPerc = 0;
  
  for (int i = 0; i < contador; i++)
  {
    print("Idade: ");
    idade = int.parse(stdin.readLineSync()!);
    
    print("Nota [1-Ruim\n2-Bom\n3-Excelente]");
    nota = int.parse(stdin.readLineSync()!);
    
    if (nota == 3)
    {
      totExc++;
      idadeExc += idade;
    }
    else if (nota == 1)
    {
      totReg++;      
    }
    else
    {
      totBom++;
    }   
    
  }
  mediaIdadeExc = idadeExc / totExc;
  print("Media de idades de pessoas que responderam 'excelente': $mediaIdadeExc");
  
  print("Quantidade de pessoas que responderam 'regular': $totReg");
  
  bomPerc = (totBom / contador) * 100;
  String formatPorc = bomPerc.toStringAsFixed(0);
  print("Porcentagem de pessoas entrevistadas que responderam 'bom': $formatPorc%");
}
