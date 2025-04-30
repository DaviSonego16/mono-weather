import 'package:flutter/material.dart';
import './services/api_service.dart';
import './models/tarefa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TarefaListScreen(),
    );
  }
}

class TarefaListScreen extends StatefulWidget {
  const TarefaListScreen({super.key});

  @override
  State<TarefaListScreen> createState() => _TarefaListScreenState();
}

class _TarefaListScreenState extends State<TarefaListScreen> {
  final ApiService _apiService = ApiService();
  late Future<List<Tarefa>> _tarefasFuture;
  bool _isReloading = false;

  @override
  void initState() {
    super.initState();
    _tarefasFuture = _apiService.fetchTodos();
  }

  void _reloadTodos() {
    
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Carregando informações.')),
      );

    setState(() {
      _isReloading = true;
    });

    _tarefasFuture = _apiService.fetchTodos().whenComplete(() {
      setState(() {
        _isReloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        actions: [
          IconButton(
            onPressed: _isReloading ? null : _reloadTodos,
            icon: _isReloading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.refresh),
            tooltip: 'Recarregar tarefas',
          ),
        ],
      ),
      body: FutureBuilder<List<Tarefa>>(
        future: _tarefasFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting && !_isReloading) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Nenhuma tarefa encontrada.'));
          }

          final tarefas = snapshot.data!;

          return ListView.builder(
            itemCount: tarefas.length,
            itemBuilder: (context, index) {
              final tarefa = tarefas[index];
              return ListTile(
                title: Text(tarefa.titulo),
                subtitle: Text('ID: ${tarefa.id} - Usuário: ${tarefa.userId}'),
                trailing: Icon(
                  tarefa.completa ? Icons.check_circle : Icons.circle_outlined,
                  color: tarefa.completa ? Colors.green : Colors.grey,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
