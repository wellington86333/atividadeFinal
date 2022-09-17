import 'package:atividade_final/endereco.dart';
import 'package:atividade_final/socio.dart';
import 'package:uuid/uuid.dart';

class Empresa {
  final String id = Uuid().v4();
  String razaoSocial;
  String nomeFantasia;
  String cnpj;
  Endereco endereco;
  Socio socio;

  Empresa({required this.razaoSocial, required this.nomeFantasia, required this.cnpj, required this.endereco, required this.socio});

  @override
  String toString() {
    String emp = id;
    String emp1 = "Razão Social: $razaoSocial";
    String emp2 = "Numero: $nomeFantasia";
    String emp3 = "CNPJ: $cnpj";
    String emp4 = "Endereco: $endereco";
    String emp5 = "Socio: $socio";

    return "\n$emp,\n$emp2, \n$emp3,\n$emp4 \n $socio, )";
  }
}


/*Uma Empresa no sistema tem os seguintes dados: ID, Razão Social, 
Nome Fantasia, 
CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP),
 Telefone, Horário do Cadastro e Sócio.
Um Sócio tem os seguintes dados: Nome, 
CPF e Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP). */