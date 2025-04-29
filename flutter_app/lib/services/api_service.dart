import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://localhost:3000'; // A URL da sua API Express

  Future<Map<String, dynamic>> fetchData(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      // Se a requisição for bem-sucedida, parse os dados
      return json.decode(response.body);
    } else {
      throw Exception('Falha ao carregar dados');
    }
  }
}
