class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(this._nome, this._peso, this._altura);

  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome;
  }

  void setPeso(double peso){
    _peso = peso;
  }

  double getPeso(){
    return _peso;
  }

  void setAltura(double altura){
    _altura = altura;
  }

  double getAltura(double altura){
    return _altura;
  }

  double calcImc(){
  var alt = ((_altura * _altura) / 10000);
  var res = _peso / alt;
  return double.parse(res.toStringAsFixed(2));
  }

  String statusImc() {
    var imc = calcImc();

      if(imc < 16){
       return "Magreza grave";

      } else if(imc >= 16 && imc < 17){
          return "Magreza moderada";

        } else if(imc >= 17 && imc < 18){
            return "Magreza leve";

          } else if(imc >= 18.5 && imc < 25){
              return "Saudável";

            } else if(imc >= 25 && imc < 30){
                return "Sobrepeso";

              } else if(imc >= 30 && imc < 35){
                  return "Obesidade Grau I";

                } else if(imc >= 35 && imc < 40){
                    return "Obesidade Grau II (Severa)";

                  } else {
                      return "Obesidade Grau III (Mórbida)";  
                  }              
  }
}