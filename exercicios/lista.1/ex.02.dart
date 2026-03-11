import 'dart:io';

void main() 
{
  print("Nome: ");
  String nome = stdin.readLineSync()!;
  
  
  print("Idade: ");
  int idade = int.parse(stdin.readLineSync()!);
  
  print("Altura: "); 
  double altura = double.parse(stdin.readLineSync()!);
  
  bool maiorDeIdade = false;
  
  print("\n-=-=-=-=-=-=-=-=-=-=-\n");
  exibirInformacoes(nome, idade, altura);
  if(idade >= 18)
  {
    maiorDeIdade = true;    
  }
  if(maiorDeIdade)
  {
    print("Maior de idade: Sim");
    return;
  }
  print("Maior de idade: Não");
  
}


void exibirInformacoes(String nome, int idade, double altura)
{
  print("Nome: $nome\nIdade: $idade\nAltura: $altura");
  
}
