import 'dart:io';
import 'package:atividade_final/empresa.dart';
import 'package:atividade_final/opcoes.dart';

void main() {
  List<Empresa> lista = [];
  int opcao = 0;

  do {
    print("\t__MENU__");
    print("1 - Cadastrar uma nova empresa");
    print("2 - Buscar Empresa cadastrada por CNPJ");
    print("3 - Buscar Empresa por CPF do Sócio");
    print("4 - Listar empresas cadastradas em ordem alfabética (Razão Social)");
    print("5 - Excluir uma empresa (por ID)");
    print("6 - Sair");
    stdout.write("Opcao: ");

    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        lista = cadastrar(lista);
        lista.forEach(print);
        break;

      case 2:
        procuraCnpj(lista);
        break;

      case 3:
        buscaCpfSocio(lista);
        break;

      case 4:
        listarEmpresa(lista);
        break;

      case 5:
        excluirPorID(lista);
        break;

      case 6:
        print("Fechando a aplicação");
        break;
    }
  } while (opcao != 6);
}


/**List<Quadrado> cadastrar(List<Quadrado> l) {
  List<Quadrado> aux = l;

  print("\t=== CADASTRO ====");
  stdout.write("Entre com a medida de altura do seu quadrado: ");
  double altura = double.parse(stdin.readLineSync()!);
  stdout.write("Entre com a medida da base do seu quadrado: ");
  double base = double.parse(stdin.readLineSync()!);

  Quadrado q = Quadrado(altura: altura, base: base);

  aux.add(q);

  return aux;
} */