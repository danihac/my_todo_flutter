import 'package:my_todo_flutter/models/todo_model.dart';
import 'package:rxdart/rxdart.dart';

class TodoRepository {
  static final instance = TodoRepository();

  final List<TodoModel> _todos = [];
  int _selectedFilter = 0;

  final todos$ = BehaviorSubject<List<TodoModel>>();

  void addNewItem(TodoModel todo) {
    todo.id = _todos.length;

    _todos.add(todo);
    todos$.add(_todos);
  }

  void markAsDone(int id) {
    var myTodo = _todos.firstWhere((element) => element.id == id);
    myTodo.isComplete = !myTodo.isComplete;
    updateTodoState();
  }

  void filter(int idx) {
    _selectedFilter = idx;
    updateTodoState();
  }

  void updateTodoState() {
    switch (_selectedFilter) {
      case 0:
        todos$.add(
            _todos.where((element) => element.isComplete == false).toList());
        break;
      case 1:
        todos$.add(
            _todos.where((element) => element.isComplete == true).toList());
        break;
      case 2:
        todos$.add(_todos);
        break;
    }
  }
}
