class Animal {
  // Atributos
  int id_animal;
  String nombre;
  String raza;

  // Constructor el nombre de la función es el mismo que el de la clase
  Animal(this.id_animal, this.nombre, this.raza);

  // Función comer
  void comer() {
    print('$nombre está comiendo.');
  }//fin de la función comer
}//fin de la clase Animal

class Perro extends Animal {
  // Constructor el nombre de la función es el mismo que el de la clase
  Perro(int id_animal, String nombre, String raza) : super(id_animal, nombre, raza);

  // Metodo correr
  void correr() {
    print('$nombre está corriendo.');
  }//fin de la metodo correr

  // Metodo dormir
  void dormir() {
    print('$nombre está durmiendo.');
  }//fin de la metodo dormir
}//fin de la clase Perro

void main() {
  print("Paola Torres Valle Mat: 22308051281109");
  // Crear una instancia de Perro
  //nombre del objeto es miPerro
  Perro tobi = Perro(1, 'Tobi', 'Pastor Alemán');

  // metodos clase Animal
  tobi.comer();  

  //metodos de la clase Perro
  tobi.correr(); // De la clase Perro
  tobi.dormir(); // De la clase Perro
}