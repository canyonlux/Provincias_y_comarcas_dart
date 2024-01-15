
import 'package:flutter/material.dart';

class InfoComarcaScreen extends StatelessWidget {
  // Suponiendo que pasas el nombre de la comarca como parámetro
  final String comarcaNombre;

  // Constructor
  InfoComarcaScreen({required Key key, required this.comarcaNombre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información de la Comarca'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Comarca: $comarcaNombre',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Aquí irían más widgets para mostrar la información detallada
            // Por ejemplo:
            // Text('Capital: [Capital de la comarca]'),
            // Text('Población: [Población de la comarca]'),
            // Image.network('URL de la imagen de la comarca'),
            // Text('Descripción: [Descripción de la comarca]'),
            // Text('Coordenadas: [Latitud, Longitud]'),
          ],
        ),
      ),
    );
  }
}
