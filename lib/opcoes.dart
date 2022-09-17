import 'dart:io';

import 'package:atividade_final/empresa.dart';
import 'package:atividade_final/endereco.dart';
import 'package:atividade_final/socio.dart';

Endereco lerEndereco() {
  stdout.write("Logradouro: ");
  String logradouro = stdin.readLineSync()!;
  stdout.write("Número: ");
  int numero = int.parse(stdin.readLineSync()!);
  stdout.write("Complemento: ");
  String complemento = stdin.readLineSync()!;
  stdout.write("Bairro: ");
  String bairro = stdin.readLineSync()!;
  stdout.write("Estado: ");
  String estado = stdin.readLineSync()!;
  stdout.write("Cep: ");
  String cep = stdin.readLineSync()!;
  stdout.write("Telefone: ");
  String telefone = stdin.readLineSync()!;
  stdout.write("Sócio: ");
  String socio = stdin.readLineSync()!;

  Endereco endereco = Endereco(logradouro, numero, complemento, bairro, estado, cep, telefone, socio);
  return endereco;
}

Socio lerSocio() {
  print("====Cadastro Sócio====");
  stdout.write("Nome Sócio: ");
  String nome = stdin.readLineSync()!;
  stdout.write("Informe CPF do sócio: ");
  String cpf = stdin.readLineSync()!;
  Endereco endereco = lerEndereco();

  Socio socio = Socio(nome, cpf, endereco);
  return socio;
}

List<Empresa> cadastrar(List<Empresa> e) {
  List<Empresa> aux = e;

  print("=====Cadastrar Empresa=====");
  stdout.write("Informe o CNPJ: ");
  String cnpj = stdin.readLineSync()!;
  stdout.write("Informe o nome fantasia: ");
  String nomeFantasia = stdin.readLineSync()!;
  stdout.write("Informe Informe a razão social: ");
  String razaoSocial = stdin.readLineSync()!;
  stdout.write("Informe o telefone");
  String telefone = stdin.readLineSync()!;
  Endereco endereco = lerEndereco();
  Socio socio = lerSocio();

  Empresa em = Empresa(razaoSocial: razaoSocial, nomeFantasia: nomeFantasia, cnpj: cnpj, endereco: endereco, socio: socio);

  aux.add(em);
  String Now() {
    final horarioAtual = DateTime.now();
    return horarioAtual.toString();
  }

  print("Empresa cadastrada com sucesso as ${Now()}");

  return aux;
}

void procuraCnpj(List<Empresa> e) {
  print("Digite o CNPJ que deseja encontrar: ");
  String cnpjt = stdin.readLineSync()!;

  for (int i = 0; i < e.length; i++) {
    if (cnpjt == e[i].cnpj) {
      print("Empresa encontrada ${e[i]}");
      i = e.length;
    }
  }
}

void buscaCpfSocio(List<Empresa> e) {
  stdout.write("Informe o CPF do sócio que deseja localizar: ");
  String cpfAux = stdin.readLineSync()!;

  for (int i = 0; i < e.length; i++) {
    if (cpfAux == e[i].socio.cpfDoSocio) {
      print("Empresa encontrada ${e[i]}");
      i = e.length;
    }
  }
}

void listarEmpresa(List<Empresa> e) {
  e.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial.toLowerCase()));
  print("====Lista de Empresas====");
  print("$e");
}

void excluirPorID(List<Empresa> e) {
  bool find = false;
  stdout.write("Informe o ID da empresa que deseja remover:");
  String idAux = stdin.readLineSync()!;

  for (int i = 0; i < e.length; i++) {
    if (idAux == e[i].socio.cpfDoSocio) {
      print("Empresa encontrada ${e[i]}");
      find = true;
      i = e.length;

      print("Deseja remover a empresa[s/n]");
      String resposta = stdin.readLineSync()!;
      if (resposta == "s") {
        e.removeWhere((element) => element.id == idAux);
        print("Empresa removida");
      } else if (resposta == "n") {
        print("Remoção cancelada");
      } else if (idAux != find) {
        print("Empresa não encontrada");
      }
    }
  }
}
