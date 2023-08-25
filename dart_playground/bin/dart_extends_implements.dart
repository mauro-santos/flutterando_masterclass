class Automovel {
  String marca = '';
  int km = 0;

  Automovel();

  Automovel.from({required this.marca, required this.km});

  int getKM() {
    return km;
  }

  void setKM(int km) {
    this.km = km;
  }

  void alterarKM(int km) {
    this.km += km;
  }
}

class Carro extends Automovel {
  /* @override
  void alterarKM(int km) {
    this.km += km + 10;
  } */
}

void main(List<String> args) {
  Carro carro = Carro();
  carro.marca = 'Toyota';
  carro.km = 2000;

  carro.alterarKM(10);
  print(carro.getKM());
}
