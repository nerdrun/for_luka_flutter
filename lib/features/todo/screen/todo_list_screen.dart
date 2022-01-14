import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/features/todo/model/todo.dart';
import 'package:test_app/features/todo/view_model/todo_list_view_model.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoListViewModel>(
      builder: (context, TodoListViewModel todoListViewModel, _) {
        List<Todo> todos = todoListViewModel.todos;
        return Material(
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  TextField(
                    onChanged: (String value) => todoListViewModel.setName(value),
                    controller: todoListViewModel.textEditingController,
                  ),
                  Column(
                    children: todos.map((todo) => Text(todo.name)).toList(),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                todoListViewModel.addTodo();
                todoListViewModel.setName('');
                todoListViewModel.textEditingController.clear();
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.navigation),
            ),
          ),
        );
      },
    );
  }
}
