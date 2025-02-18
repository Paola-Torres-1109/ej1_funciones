import 'dart:io';

// Clase Vehiculo
class Vehiculo {
  // Atributos
  int id_vehiculo;
  String marca;
  String modelo;
  int anio;
  String estado;
  double kilometraje;

  // Constructor
  Vehiculo(this.id_vehiculo, this.marca, this.modelo, this.anio, this.estado, this.kilometraje);

  // Función capturarDatos con interacción de usuario
  void capturarDatos() {
    print('Ingrese el ID del vehículo:');
    id_vehiculo = int.parse(stdin.readLineSync()!);

    print('Ingrese la marca del vehículo:');
    marca = stdin.readLineSync()!;

    print('Ingrese el modelo del vehículo:');
    modelo = stdin.readLineSync()!;

    print('Ingrese el año del vehículo:');
    anio = int.parse(stdin.readLineSync()!);

    print('Ingrese el estado del vehículo (Nuevo/Usado):');
    estado = stdin.readLineSync()!;

    print('Ingrese el kilometraje del vehículo:');
    kilometraje = double.parse(stdin.readLineSync()!);
  }
}

// Clase DatosVehiculo que hereda de Vehiculo
class DatosVehiculo extends Vehiculo {
  // Constructor
  DatosVehiculo(int id_vehiculo, String marca, String modelo, int anio, String estado, double kilometraje)
      : super(id_vehiculo, marca, modelo, anio, estado, kilometraje);

  // Función mostrarDatos
  void mostrarDatos() {
    print('\nDatos del vehículo:');
    print('ID: $id_vehiculo');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Año: $anio');
    print('Estado: $estado');
    print('Kilometraje: $kilometraje km');
  }
}

// Clase Ventas
class Ventas {
  // Atributos
  int id_venta;
  String fecha;
  String cliente_a;
  String vehiculo_v;
  double precio_f;
  String metodo_p;

  // Constructor
  Ventas(this.id_venta, this.fecha, this.cliente_a, this.vehiculo_v, this.precio_f, this.metodo_p);

  // Función capturarDatos con interacción de usuario
  void capturarDatos() {
    print('Ingrese el ID de la venta:');
    id_venta = int.parse(stdin.readLineSync()!);

    print('Ingrese la fecha de la venta (dd/mm/aaaa):');
    fecha = stdin.readLineSync()!;

    print('Ingrese el nombre del cliente:');
    cliente_a = stdin.readLineSync()!;

    print('Ingrese el vehículo vendido:');
    vehiculo_v = stdin.readLineSync()!;

    print('Ingrese el precio final:');
    precio_f = double.parse(stdin.readLineSync()!);

    print('Ingrese el método de pago (Efectivo/Tarjeta/Transferencia):');
    metodo_p = stdin.readLineSync()!;
  }
}

// Clase DatosVentas que hereda de Ventas
class DatosVentas extends Ventas {
  // Constructor
  DatosVentas(int id_venta, String fecha, String cliente_a, String vehiculo_v, double precio_f, String metodo_p)
      : super(id_venta, fecha, cliente_a, vehiculo_v, precio_f, metodo_p);

  // Función mostrarDatos
  void mostrarDatos() {
    print('\nDatos de la venta:');
    print('ID de la venta: $id_venta');
    print('Fecha: $fecha');
    print('Cliente: $cliente_a');
    print('Vehículo vendido: $vehiculo_v');
    print('Precio final: \$$precio_f');
    print('Método de pago: $metodo_p');
  }
}

void main() {
  print("Paola Torres Valle Mat: 22308051281109");
  // Crear una instancia de DatosVehiculo
  DatosVehiculo vehiculo = DatosVehiculo(0, '', '', 0, '', 0.0);

  // Capturar datos desde la consola
  print('Captura de datos del vehículo:');
  vehiculo.capturarDatos();

  // Mostrar los datos capturados
  vehiculo.mostrarDatos();



  // Crear una instancia de DatosVentas
  DatosVentas venta = DatosVentas(0, '', '', '', 0.0, '');

  // Capturar datos desde la consola
  print('\n\nCaptura de datos de la venta:');
  venta.capturarDatos();

  // Mostrar los datos capturados
  venta.mostrarDatos();
}