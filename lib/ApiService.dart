import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Comarca.dart';

class ApiService {
  // URL de la API para obtener comarcas
  final String comarcasUrl = 'https://node-comarcas-rest-server-production.up.railway.app/api/comarcas/';

  // Método para obtener comarcas de una provincia específica
  Future<List<Comarca>> obtenerComarcas(String provincia) async {
    final response = await http.get(Uri.parse(comarcasUrl + provincia));

    if (response.statusCode == 200) {
      List<dynamic> comarcasJson = json.decode(response.body);
      return comarcasJson.map((json) => Comarca.fromJSON(json)).toList();
    } else {
      throw Exception('Error al cargar las comarcas');
    }
  }
}
