// Escreva um programa em Dart para criar uma classe House com as
// propriedades [id, nome, preço]. Crie um construtor para ela e crie 3
// objetos. Adicione-os a uma lista e imprima todos os detalhes.

class House{
  int id;
  String nome;
  double preco;

  House(this.id, this.nome, this.preco);

  void printDetalhes(){
    print("\nID: $id");
    print("Nome: $nome");
    print("Preço: $preco");
  }
}

void main(){
  House casa1 = new House(1, "Casa 1", 250000);
  House casa2 = new House(2, "Casa 2", 300000);
  House casa3 = new House(3, "Casa 3", 420000);

  casa1.printDetalhes();
  casa2.printDetalhes();
  casa3.printDetalhes();
}