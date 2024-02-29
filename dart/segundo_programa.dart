main() {
  //variaveis tipadas
  String texto;
  int inteiro;
  double fracao;
  bool logico;

  //atribuindo valor as variáveis
  texto = "Flutter é legal";
  inteiro = 2018;
  fracao = 3.36;
  logico = true;

  //utilizando o final na variável
  var variaveis = 10;
  final variavelfinal = 5;
  variaveis = 11;
  // variavelfinal = 8;
  //---final só permite alterar o valor da variavel uma vez.

  //Coleção
  var lista = ['a', 'b', 'c'];
  List outraLista = [1, 2, 3, 5, 5, 6];
  print("Lista $lista $outraLista");
  //operador spread
  var listasJunta = [...lista, ...outraLista]; // juntar listas ...
  print("Listas juntas $listasJunta");

  Map mapa = {"id": 1, "nome": "José", "esposa": "Maria", "idade": 30};
  print("Um mapa $mapa");
}
