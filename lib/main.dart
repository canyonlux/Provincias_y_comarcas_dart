import 'package:flutter/material.dart';

import 'comarcas_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comarcas del País Valencià',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comarcas del País Valencià'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComarcasScreen()),
                );
              },
              child: Text('Ver Comarcas'),
            ),
            SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComarcasScreen()));
                // Aquí irá la lógica para navegar a la pantalla de búsqueda de información de comarcas
              },
              child: Text('Buscar Información de Comarca'),
            ),
          ],
        ),
      ),
    );
  }
}
