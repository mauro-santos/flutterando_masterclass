/*
DESAFIO MASTERCLASS

Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), é uma sequência de números inteiros, começando normalmente por 0 e 1, na qual cada termo subsequente corresponde à soma dos dois anteriores. A sequência recebeu o nome do matemático italiano Leonardo de Pisa, mais conhecido por Fibonacci, que descreveu, no ano de 1202, o crescimento de uma população de coelhos, a partir desta. Esta sequência já era, no entanto, conhecida na antiguidade.

Implemente a sequencia fibonacci com funcões recursivamente usando o Dart.
*/

void main(List<String> args) {
  var maxNumber = 144;
  var lastNumber = 1;
  var previousNumber = 0;
  var fibonacciText = "";

  print(
      "A sequência fibonacci para o número máximo $maxNumber é: ${sequenciaFibonacci(maxNumber, lastNumber: lastNumber, previousNumber: previousNumber, fibonacciText: fibonacciText)}");

  // 0 1 1 2 3 5 8 13 21 34 55 89 144 ...
}

String sequenciaFibonacci(
  int maxNumber, {
  int lastNumber = 1,
  int previousNumber = 0,
  String fibonacciText = "",
}) {
  if ((lastNumber + previousNumber) <= maxNumber) {
    if (lastNumber == 1 && previousNumber == 0) {
      fibonacciText += "0 1";
    }

    var newLastNumber = lastNumber + previousNumber;
    previousNumber = lastNumber;
    lastNumber = newLastNumber;

    if (lastNumber <= maxNumber) {
      fibonacciText += " $lastNumber";

      fibonacciText = sequenciaFibonacci(maxNumber,
          lastNumber: lastNumber,
          previousNumber: previousNumber,
          fibonacciText: fibonacciText);
    }
  }

  return fibonacciText;
}
