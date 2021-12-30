import 'package:my_todo_flutter/models/todo_model.dart';
import 'package:rxdart/rxdart.dart';

enum SortBy {
  priority,
  date
}

class TodoRepository {
  static final instance = TodoRepository();

  final List<TodoModel> _todos = [];
  int _selectedFilter = 0;
  bool _ascending = true;
  SortBy _sortBy = SortBy.date;

  final todos$ = BehaviorSubject<List<TodoModel>>();

  void addNewItem(TodoModel todo) {
    _todos.add(todo);
    todos$.add(_todos);
    _sortListBy();
  }

  void markAsDone(String id) {
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
    _sortListBy();
  }

  void changeSorting({ required bool ascending, bool sortByCreateDate = true}) {
    _ascending = ascending;
    if(sortByCreateDate && _sortBy == SortBy.priority){
      _sortBy = SortBy.date;
    } else if (!sortByCreateDate && _sortBy == SortBy.date) {
      _sortBy = SortBy.priority;
    }
    _sortListBy();
  }

  void _sortListBy(){
    if(_sortBy == SortBy.date){
      _sortListByDate();
    } else {
      _sortListByPriority();
    }
  }

  void _sortListByPriority(){
    var data = todos$.value;
    data.sort((a,b) => _ascending ? a.priority.compareTo(b.priority) : b.priority.compareTo(a.priority));
    todos$.add(data);
  }

  void _sortListByDate(){
    var data = todos$.value;
    data.sort((a,b) => _ascending ? a.created.compareTo(b.created) : b.created.compareTo(a.created));
    todos$.add(data);
  }
}
