void main() {
  print("Olá, mundo!"); // Imprime "Olá, mundo!"

  // Outros exemplos:

  // Variáveis
  int idade = 25;
  double altura = 1.79;
  String nome = "João";

  // Concatenação de Strings
  String mensagem = "Olá, " +
      nome +
      ". Você tem " +
      idade.toString() +
      " anos e mede " +
      altura.toString() +
      " metros.";
  print(mensagem);

  // Estruturas condicionais
  if (idade >= 18) {
    print("Você é maior de idade.");
  } else {
    print("Você é menor de idade.");
  }

  // Laços de repetição
  for (int i = 1; i <= 5; i++) {
    print("Número: $i");
  }

  // Listas
  List<String> frutas = ["Maçã", "Banana", "Laranja"];
  for (String fruta in frutas) {
    print("Gosto de $fruta");
  }
}
