import 'dart:io'; // Importar la biblioteca para leer la entrada del usuario

class Vehiculo {
  // Atributos de la clase
  int id_vehiculo;
  String marca;
  String modelo;
  int anio;
  String estado;
  double kilometraje;

  // Constructor
  Vehiculo(this.id_vehiculo, this.marca, this.modelo, this.anio, this.estado, this.kilometraje);

  // Función para capturar datos
  void captura(int id, String marca, String modelo, int anio, String estado, double kilometraje) {
    this.id_vehiculo = id;
    this.marca = marca;
    this.modelo = modelo;
    this.anio = anio;
    this.estado = estado;
    this.kilometraje = kilometraje;
  }

  // Función para mostrar los datos del vehículo
  void mostrarDatos() {
    print("""
    ID Vehículo: $id_vehiculo
    Marca: $marca
    Modelo: $modelo
    anio: $anio
    Estado: $estado
    Kilometraje: $kilometraje km
    """);
  }
}

class Empleado {
  // Atributos de la clase
  int id_empleado;
  String nombre_e;
  String cargo;
  double salario;
  String turno;
  String departamento;

  // Constructor
  Empleado(this.id_empleado, this.nombre_e, this.cargo, this.salario, this.turno, this.departamento);

  // Función para capturar datos
  void captura(int id, String nombre, String cargo, double salario, String turno, String departamento) {
    this.id_empleado = id;
    this.nombre_e = nombre;
    this.cargo = cargo;
    this.salario = salario;
    this.turno = turno;
    this.departamento = departamento;
  }

  // Función para mostrar los datos del empleado
  void mostrarDatos() {
    print("""
    ID Empleado: $id_empleado
    Nombre: $nombre_e
    Cargo: $cargo
    Salario: \$${salario.toStringAsFixed(2)}
    Turno: $turno
    Departamento: $departamento
    """);
  }
}

class Proveedor {
  // Atributos de la clase
  int id_proveedor;
  String nombre_p;
  String direccion;
  String telefono;
  String representante;
  String tipo_pago;

  // Constructor
  Proveedor(this.id_proveedor, this.nombre_p, this.direccion, this.telefono, this.representante, this.tipo_pago);

  // Función para capturar datos
  void captura(int id, String nombre, String direccion, String telefono, String representante, String tipo_pago) {
    this.id_proveedor = id;
    this.nombre_p = nombre;
    this.direccion = direccion;
    this.telefono = telefono;
    this.representante = representante;
    this.tipo_pago = tipo_pago;
  }

  // Función para mostrar los datos del proveedor
  void mostrarDatos() {
    print("""
    ID Proveedor: $id_proveedor
    Nombre: $nombre_p
    Dirección: $direccion
    Teléfono: $telefono
    Representante: $representante
    Tipo de Pago: $tipo_pago
    """);
  }
}



void main() {

  print("Paola Torres Valle Mat: 22308051281109");


  // Solicitar datos al usuario
  print("Ingrese los datos del vehículo:");

  // Leer el ID del vehículo
  stdout.write("ID Vehículo: ");
  int id_vehiculo = int.parse(stdin.readLineSync()!);

  // Leer la marca del vehículo
  stdout.write("Marca: ");
  String marca = stdin.readLineSync()!;

  // Leer el modelo del vehículo
  stdout.write("Modelo: ");
  String modelo = stdin.readLineSync()!;

  // Leer el anio del vehículo
  stdout.write("anio: ");
  int anio = int.parse(stdin.readLineSync()!);

  // Leer el estado del vehículo
  stdout.write("Estado (Nuevo/Usado): ");
  String estado = stdin.readLineSync()!;

  // Leer el kilometraje del vehículo
  stdout.write("Kilometraje: ");
  double kilometraje = double.parse(stdin.readLineSync()!);

  // Crear una instancia de la clase Vehiculo con los datos ingresados
  Vehiculo vehiculo = Vehiculo(id_vehiculo, marca, modelo, anio, estado, kilometraje);

  // Mostrar los datos del vehículo
  print("\nDatos del vehículo ingresado:");
  vehiculo.mostrarDatos();


  // Solicitar datos al usuario
  print("Ingrese los datos del empleado:");

  // Leer el ID del empleado
  stdout.write("ID Empleado: ");
  int id_empleado = int.parse(stdin.readLineSync()!);

  // Leer el nombre del empleado
  stdout.write("Nombre: ");
  String nombre_E = stdin.readLineSync()!;

  // Leer el cargo del empleado
  stdout.write("Cargo: ");
  String cargo = stdin.readLineSync()!;

  // Leer el salario del empleado
  stdout.write("Salario: ");
  double salario = double.parse(stdin.readLineSync()!);

  // Leer el turno del empleado
  stdout.write("Turno (Mañana/Tarde/Noche): ");
  String turno = stdin.readLineSync()!;

  // Leer el departamento del empleado
  stdout.write("Departamento: ");
  String departamento = stdin.readLineSync()!;

  // Crear una instancia de la clase Empleado con los datos ingresados
  Empleado empleado = Empleado(id_empleado, nombre_E, cargo, salario, turno, departamento);

  // Mostrar los datos del empleado
  print("\nDatos del empleado ingresado:");
  empleado.mostrarDatos();


  // Solicitar datos al usuario
  print("Ingrese los datos del proveedor:");

  // Leer el ID del proveedor
  stdout.write("ID Proveedor: ");
  int id_proveedor = int.parse(stdin.readLineSync()!);

  // Leer el nombre del proveedor
  stdout.write("Nombre: ");
  String nombre_p = stdin.readLineSync()!;

  // Leer la dirección del proveedor
  stdout.write("Dirección: ");
  String direccion = stdin.readLineSync()!;

  // Leer el teléfono del proveedor
  stdout.write("Teléfono: ");
  String telefono = stdin.readLineSync()!;

  // Leer el representante del proveedor
  stdout.write("Representante: ");
  String representante = stdin.readLineSync()!;

  // Leer el tipo de pago del proveedor
  stdout.write("Tipo de Pago (Efectivo/Tarjeta/Transferencia): ");
  String tipo_pago = stdin.readLineSync()!;

  // Crear una instancia de la clase Proveedor con los datos ingresados
  Proveedor proveedor = Proveedor(id_proveedor, nombre_p, direccion, telefono, representante, tipo_pago);

  // Mostrar los datos del proveedor
  print("\nDatos del proveedor ingresado:");
  proveedor.mostrarDatos();
}