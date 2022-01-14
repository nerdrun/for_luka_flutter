import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/features/todo/screen/todo_list_screen.dart';
import 'package:test_app/features/todo/view_model/todo_list_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<TodoListViewModel>(
        create: (context) {
          TodoListViewModel todoListViewModel = TodoListViewModel();
          todoListViewModel.getTodos();
          return todoListViewModel;
        },
        builder: (context, child) => const TodoListScreen(),
      ),
    );
  }
}
