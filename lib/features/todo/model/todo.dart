class Todo {
  final int id;
  final String name;
  final bool isChecked;

  Todo({
    required this.id,
    required this.name,
    required this.isChecked,
  });

  factory Todo.fromJson(Map json) {
    return Todo(
      id: json['id'],
      name: json['name'],
      isChecked: json['isChecked'],
    );
  }
}
