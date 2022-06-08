import 'package:my_todo_flutter/bloc/todo_bloc.dart';
import 'package:my_todo_flutter/models/todo_model.dart';

class TodoRepository {
  static final instance = TodoRepository();

  final List<TodoModel> _todos = [];

  List<TodoModel> getTodos(TodoState state) {
    // print('Get todos state: $state');
    var _todosFiltered = [..._todos];
    _updateFilteredList(_todosFiltered, state.filters);
    _todosFiltered = _filterTodosStatus(_todosFiltered, state.showStatus);
    _sortListBy(_todosFiltered, state.ascending, state.sortBy);
    return _todosFiltered;
  }

  void addNewItem(TodoModel todo) {
    _todos.add(todo);
  }

  void updateTodo(TodoModel todo) {
    var index = _todos.indexWhere((elem) => elem.id == todo.id);
    if (index >= 0) {
      _todos.removeAt(index);
    }
    _todos.add(todo);
  }

  void markAsDone(String id) {
    var myTodo = _todos.firstWhere((element) => element.id == id);
    myTodo.isComplete = !myTodo.isComplete;
    // FIX
  }

  ///
  /// Internal functions
  ///

  List<TodoModel> _filterTodosStatus(
    List<TodoModel> todosFiltered,
    TodoStatus tabStatus,
  ) {
    switch (tabStatus) {
      case TodoStatus.todo:
        return todosFiltered
            .where((element) => element.isComplete == false)
            .toList();
      case TodoStatus.done:
        return todosFiltered
            .where((element) => element.isComplete == true)
            .toList();
      case TodoStatus.all:
        return todosFiltered;
    }
  }

  void _sortListBy(List<TodoModel> todos, bool ascending, SortBy sortBy) {
    if (sortBy == SortBy.date) {
      _sortListByDate(todos, ascending);
    } else {
      _sortListByPriority(todos, ascending);
    }
  }

  void _sortListByPriority(List<TodoModel> todos, bool ascending) {
    todos.sort((a, b) => ascending
        ? a.priority.compareTo(b.priority)
        : b.priority.compareTo(a.priority));
  }

  void _sortListByDate(List<TodoModel> todos, bool ascending) {
    todos.sort((a, b) => ascending
        ? a.created.compareTo(b.created)
        : b.created.compareTo(a.created));
  }

  void _updateFilteredList(List<TodoModel> todos, List<String> filters) {
    for (var filter in filters) {
      todos = todos.where((element) => element.tags.contains(filter)).toList();
    }
  }
}
