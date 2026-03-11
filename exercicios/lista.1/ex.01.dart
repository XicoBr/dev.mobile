void main() 
{
  int idade = 11;
  double altura = 1.82;
  String nome = "Joao";
  
  bool maiorDeIdade = false;
  
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