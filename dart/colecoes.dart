main() {
  // gerador automático de valores para uma lista
  var numeros = List.generate(10, (index) => index);
  print(numeros);

  //ordenar listas
  // var naoordenada = ['c', 'x', 'a', 'D', 'F'];
  var naoordenada = [3, 2, 1];
  naoordenada.sort();
  print(naoordenada);

  var letras = ['c', 'x', 'a', 'D', 'F'];
  letras.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
  print(letras);

  //adicionar e remover da lista
  letras.add("Z");
  print(letras);

  letras.remove("a");
  print(letras);

  print("Contém Z na lista?  ${letras.contains("Z")}");
  print("Contém a na lista?  ${letras.contains("a")}");

  print("Z está na posição ${letras.indexOf("Z")} da lista");
  //converte uma lista de elementos x em outra lista de elementos y, baseados nos elementos x
  var tabuada = numeros.map((numero) => "5X$numero=${5 * numero}").toList();
  print(tabuada);
}
