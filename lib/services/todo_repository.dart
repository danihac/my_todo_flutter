import 'package:my_todo_flutter/models/todo_model.dart';
import 'package:rxdart/rxdart.dart';

class TodoRepository {
  static final instance = TodoRepository();

  final List<TodoModel> _todos = [];
  int _selectedFilter = 0;
  bool _ascending = true;

  final todos$ = BehaviorSubject<List<TodoModel>>();

  void addNewItem(TodoModel todo) {
    todo.id = _todos.length;

    _todos.add(todo);
    todos$.add(_todos);
    _sortList();
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
    _sortList();
  }

  void changeSorting(bool ascending) {
    _ascending = ascending;
    _sortList();
  }

  void _sortList(){
    var data = todos$.value;
    data.sort((a,b) => _ascending ? a.priority.compareTo(b.priority) : b.priority.compareTo(a.priority));
    todos$.add(data);
  }
}
