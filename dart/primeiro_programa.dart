main() {
  print("1. Operadores aritméticos");
  var numero1 = 2;
  var numero2 = 4.000000000000000000000000000000000003;

  var resultado = numero1 + numero2; // somar
  var mult = numero1 * numero2; // multiplicar

  print("Resultado da soma é $resultado");
  print("Resultado da multiplicação é $mult");
  print("Resultado da divisão é ${numero2 / numero1}");
  print("Resultado da subtração é ${numero2 - numero1}");
  print("Resultado do resto da divisão é ${numero2 % numero1}");

  print("Exibe e incrementa ${numero1++}  ${numero1}");
  print("Exibe e decrementa ${numero1--}  ${numero1}");
  print("Incrementa e exibe ${++numero1}  ${numero1}");
  print("Decrementa e exibe ${--numero1}  ${numero1}");

  numero2 += 10; //forma reduzida de fazer numero2 = numero2 + 10;
  print(numero2);
  numero2 -= 3;
  print(numero2);
  numero2 *= 2;
  print(numero2);
  numero2 /= 2;
  print(numero2);

  print("Provando a precisão dos números fracionários");
  var num = 7;
  var div = 7 / 3;
  print(div);
  print(div * 3);

  print("Operadores Lógicos: == != > < >= <= is  - && || ");
  print("Igualdade ${1 == 2} ${1 == 1} ${"1" == "1"} ");
  print("Diferente ${1 != 2} ${1 != 1} ${"1" != "1"} ");
  print("Maior ${1 > 2} ${1 > 1} ${1 >= 1}");
  print("Menor ${1 < 2} ${1 < 1} ${1 <= 1}");
  print("Verdadeiro e Verdadeiro ${true && true} ");
  print("Verdadeiro e falso ${true && false} ");
  print("falso e falso ${false && false} ");
  print(
      " 1 == 2 && 1 == 1 && '1' == '1' resultado = ${1 == 2 && 1 == 1 && "1" == "1"}");

  print("Verdadeiro ou Verdadeiro ${true || true} ");
  print("Verdadeiro ou falso ${true || false} ");
  print("falso ou falso ${false || false} ");
  print(
      " 1 == 2 || 1 == 1 || '1' == '1' resultado = ${1 == 2 || 1 == 1 || "1" == "1"}");

  print("numero1 é inteiro ${numero1 is int}");
  print("numero1 é double ${numero1 is double}");
  print("numero2 é double ${numero2 is double}");
}
