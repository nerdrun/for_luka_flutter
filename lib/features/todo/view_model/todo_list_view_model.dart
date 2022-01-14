import 'package:flutter/material.dart';
import 'package:test_app/features/todo/model/todo.dart';
import 'package:test_app/features/todo/service/todo_service.dart';

class TodoListViewModel extends ChangeNotifier {
  final TodoService _todoService = TodoService();
  List<Todo> _todos = [];
  String _name = '';
  TextEditingController textEditingController = TextEditingController();
  bool isLoading = true;

  String get name => _name;
  List<Todo> get todos => _todos;

  void setTodos(List<Todo> todos) {
    _todos = todos;
  }

  void setName(String name) {
    _name = name;
  }

  getTodos() {
    setTodos(_todoService.getTodos());
    isLoading = false;
    notifyListeners();
  }

  addTodo({String name = 'hello', int id = 10, bool isChecked = false}) {
    _todos.add(Todo(id: id, name: _name, isChecked: isChecked));
    notifyListeners();
  }
}