/*
DESAFIO MASTERCLASS

O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
O calculo é representado por Dividir o peso pela Altura ao quadradro²

Cria uma função que realize o calculo de IMC.
*/

void main(List<String> args) {
  var weight = 80.0;
  var height = 1.80;

  print(
    "O IMC, índice de massa corporal, do individuo é ${calculateIMC(weight, height)}",
  );
}

double calculateIMC(double w, double h) {
  var imc = (h <= 0 ? 0.0 : w / (h * h));

  return imc;
}
