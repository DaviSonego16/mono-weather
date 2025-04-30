class Tarefa {
  final int id;
  final int userId;
  final String titulo;
  final bool completa;

  Tarefa({
    required this.id,
    required this.userId,
    required this.titulo,
    required this.completa,
  });

  factory Tarefa.fromJson(Map<String, dynamic> json) {
    return Tarefa(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? 0,
      titulo: json['title']?.toString() ?? 'Sem título',
      completa: json['completed'] ?? false,
    );
  }
}
