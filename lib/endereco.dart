class Endereco {
  String logradouro;
  int numero;
  String complemento;
  String bairro;
  String estado;
  String cep;
  String telefone;
  String socio;

  Endereco(this.logradouro, this.numero, this.complemento, this.bairro, this.estado, this.cep, this.telefone, this.socio);

  @override
  String toString() {
    String auxEnd = "Logradouro: $logradouro";
    String auxEnd1 = "Numero: $numero";
    String auxEnd2 = "Complemento: $complemento";
    String auxEnd3 = "Bairro: $bairro";
    String auxEnd4 = "Estado: $estado ";
    String auxEnd5 = "Cep: $cep";
    String auxEnd6 = "Telefone: $telefone";
    String auxEnd7 = "Socio $socio";

    return "\n$auxEnd,\n$auxEnd1,\n$auxEnd2,\n$auxEnd3,\n$auxEnd4,\n$auxEnd5,\n$auxEnd6,\n$auxEnd7";
  }
}
