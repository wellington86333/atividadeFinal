import 'package:atividade_final/endereco.dart';

class Socio {
  String nome;
  String cpfDoSocio;
  Endereco endereco;

  Socio(this.nome, this.cpfDoSocio, this.endereco);

  @override
  String toString() {
    String soc = "Nome: $nome";
    String soc1 = "CPF: $cpfDoSocio";
    Endereco endereco;
    Socio socio;

    return "\n$nome,\n$cpfDoSocio)";
  }
}
//Um Sócio tem os seguintes dados: Nome, CPF e Endereço 
//(Logradouro, Número, Complemento, Bairro, Estado e CEP)., 