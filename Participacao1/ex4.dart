// Escreva um programa em Dart para criar uma classe Camera com
// propriedades privadas [id, marca, cor, preço]. Crie métodos getter e setter
// para acessar e modificar os valores. Além disso, crie 3 objetos dela e
// imprima todos os detalhes.

class Camera{
  int _id;
  String _marca;
  String _cor;
  double _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;

  set id(int id) => _id = id;
  set marca(String marca) => _marca = marca;
  set cor(String cor) => _cor = cor;
  set preco(double preco) => _preco = preco;

  void printDetalhes(){
    print("\nID: $_id");
    print("Marca: $_marca");
    print("Cor: $_cor");
    print("Preço: R\$ $_preco");
  }
}

void main(){
  Camera camera1 = new Camera(1, "Canon", "Preto", 1500.00);
  Camera camera2 = new Camera(2, "Nikon", "Branco", 2000.00);
  Camera camera3 = new Camera(3, "Sony", "Prata", 2500.00);

  camera1.printDetalhes();
  camera2.printDetalhes();
  camera3.printDetalhes();
}

