import 'package:test_app/features/todo/model/todo.dart';

class TodoService {
  List<Todo> getTodos() {
    return [
      Todo.fromJson({'id': 1, 'name': 'hello', 'isChecked': false}),
      Todo.fromJson({'id': 2, 'name': 'aa', 'isChecked': false}),
      Todo.fromJson({'id': 3, 'name': 'aelf', 'isChecked': false}),
      Todo.fromJson({'id': 4, 'name': 'asdflie', 'isChecked': false}),
      Todo.fromJson({'id': 5, 'name': 'adf', 'isChecked': false}),
      Todo.fromJson({'id': 6, 'name': 'adsf', 'isChecked': false}),
      Todo.fromJson({'id': 7, 'name': 'adf', 'isChecked': false}),
      Todo.fromJson({'id': 8, 'name': 'adfa', 'isChecked': false}),
    ];
  }
}
