class Comarca {
  String comarca;
  String? capital;
  String? poblacion;
  String? img;
  String? desc;
  double? latitud;
  double? longitud;

  // Constructor con argumentos nombrados
  Comarca({
    required this.comarca,
    this.capital,
    this.poblacion,
    this.img,
    this.desc,
    this.latitud,
    this.longitud,
  });

  // Constructor nombrado para crear una instancia a partir de un JSON
  Comarca.fromJSON(Map<String, dynamic> json) {
    comarca = json['comarca'];
    capital = json['capital'];
    poblacion = json['poblacion'];
    img = json['img'];
    desc = json['desc'];

    // Asumiendo que 'coordenadas' es una lista con latitud y longitud
    if (json['coordenadas'] != null && json['coordenadas'].length == 2) {
      latitud = json['coordenadas'][0];
      longitud = json['coordenadas'][1];
    }
  }

  @override
  String toString() {
    return 'nombre: $comarca\n'
        'capital: $capital\n'
        'población: $poblacion\n'
        'Imagen: $img\n'
        'descripción: $desc\n'
        'Coordenadas: ($latitud, $longitud)';
  }
}
