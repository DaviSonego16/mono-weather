import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/tarefa.dart';

class ApiService {
  final String apiUrl = 'http://10.0.2.2:3000/data';

  Future<List<Tarefa>> fetchTodos() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => Tarefa.fromJson(item)).toList();
    } else {
      throw Exception('Erro ao carregar tarefas');
    }
  }
}
