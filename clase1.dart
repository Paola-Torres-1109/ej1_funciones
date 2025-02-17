class Persona {
  // Atributos (propiedades)
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Funciones (métodos)
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }

  void cumplirAnos() {
    edad++;
    print('¡Feliz cumpleaños! Ahora tengo $edad años.');
  }
}

void main() {
  print("Paola Torres Valle Mat: 22308051281109");
  // Crear una instancia de la clase Persona
  Persona persona1 = Persona('Paola', 18);

  // Acceder a los atributos
  print('Nombre: ${persona1.nombre}'); // Salida: Nombre: Juan
  print('Edad: ${persona1.edad}');     // Salida: Edad: 25

  // Llamar a las funciones
  persona1.saludar(); // Salida: Hola, mi nombre es Juan y tengo 25 años.
  persona1.cumplirAnos(); // Salida: ¡Feliz cumpleaños! Ahora tengo 26 años.
}