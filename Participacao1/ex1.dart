// Escreva um programa em Dart para criar uma classe Laptop com as
// propriedades [id, nome, ram] e crie 3 objetos dela, imprimindo todos os
// detalhes.

class Laptop{
  int id;
  String nome;
  int ram;

  Laptop(this.id, this.nome, this.ram);

  void printDetalhes(){
    print("\nID: $id");
    print("Nome: $nome");
    print("RAM: $ram" + "gb");
  }
}

void main(){
    Laptop laptop1 = new Laptop(1, "Dell", 8);
    Laptop laptop2 = new Laptop(2, "HP", 16);
    Laptop laptop3 = new Laptop(3, "Lenovo", 32);

    laptop1.printDetalhes();
    laptop2.printDetalhes();
    laptop3.printDetalhes();
  }