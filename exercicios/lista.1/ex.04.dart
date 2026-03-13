import 'dart:io';


void main()
{
    Map<int, List<double>> motoristas = new Map();
    int idMotorista = 0;
    double valorMulta = 0;
    double totalArrecadado = 0;
    int motoristaMaisMultas = 0;
    int maiorQuantidade = 0;


    do {
      print("-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      print("Digite o número: ");
      idMotorista = int.parse(stdin.readLineSync()!);
      print("-=-=-=-=-=-=-=-=-=-=-=-=-=-\n");

    if(idMotorista < 1 || idMotorista > 4327)
    {      
      break;
    }

    // crio o motorista se não existir previamente na lista
      if (!motoristas.containsKey(idMotorista))
      {
        motoristas[idMotorista] = [];
      }
      print("ID MOTORISTA: $idMotorista");
      print("-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      print("Valor da multa: \r");
      valorMulta = double.parse(stdin.readLineSync()!);

      motoristas[idMotorista]!.add(valorMulta);

    } while (true);
    print("-=-=-=-=-=-=-=-=-=-=-=-=-=-");
    
    motoristas.forEach((id, multa) 
    {
      int totMultas = multa.length;
      double soma = 0;

      if(totMultas > maiorQuantidade)
      {
        maiorQuantidade = totMultas;
        motoristaMaisMultas = id;
      }

      print("Id motorista: $id\nMulta: $multa");
      print("Total de Multas: $totMultas");

      // usando o .reduce() para reduzir a minha coleção à soma dos valores pertencentes a ela. Esta é uma função anônima (=>)
      if(multa.isNotEmpty)
      {
        soma = multa.reduce((a, b) => a + b);
        totalArrecadado += soma;
      }
      print("Valor total a ser pago: R\$$soma");
      print("-=-=-=-=-=-=-=-=-=-=-=-=-=-");

    });
      print("Total arrecadado: R\$ $totalArrecadado");
      print("ID motorista com mais multas: $motoristaMaisMultas\ttotal: $maiorQuantidade");

    
}