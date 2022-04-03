// import 'package:my_todo_flutter/models/todo_model.dart';
// import 'package:rxdart/rxdart.dart';

// enum SortBy {
//   priority,
//   date
// }

// class TodoRepository {
//   static final instance = TodoRepository();

//   final List<TodoModel> _todos = [];
//   List<TodoModel> _todosFiltered = [];
//   final List<String> _filters = [];

//   int _selectedTab = 0;
//   bool _ascending = true;
//   SortBy _sortBy = SortBy.date;

//   final todos$ = BehaviorSubject<List<TodoModel>>();
//   final filters$ = BehaviorSubject<List<String>>();

//   void addNewItem(TodoModel todo) {
//     _todos.add(todo);
//     updateTodoState();
//   }

//   void markAsDone(String id) {
//     var myTodo = _todos.firstWhere((element) => element.id == id);
//     myTodo.isComplete = !myTodo.isComplete;
//     updateTodoState();
//   }

//   void changeTab(int idx) {
//     _selectedTab = idx;
//     updateTodoState();
//   }

//   void addNewFilter(String tag){
//     _filters.add(tag);
//     filters$.add(_filters);
//     updateTodoState();
//   }

//   void removeFilter(String tag){
//     _filters.remove(tag);
//     filters$.add(_filters);
//     updateTodoState();
//   }

//   void updateTodoState() {
//     _updateFilteredList();
//     switch (_selectedTab) {
//       case 0:
//         todos$.add(
//             _todosFiltered.where((element) => element.isComplete == false).toList());
//         break;
//       case 1:
//         todos$.add(
//             _todosFiltered.where((element) => element.isComplete == true).toList());
//         break;
//       case 2:
//         todos$.add(_todosFiltered);
//         break;
//     }
//     _sortListBy();
//   }

//   void changeSorting({ required bool ascending, bool sortByCreateDate = true}) {
//     _ascending = ascending;
//     if(sortByCreateDate && _sortBy == SortBy.priority){
//       _sortBy = SortBy.date;
//     } else if (!sortByCreateDate && _sortBy == SortBy.date) {
//       _sortBy = SortBy.priority;
//     }
//     _sortListBy();
//   }

//   void _sortListBy(){
//     if(_sortBy == SortBy.date){
//       _sortListByDate();
//     } else {
//       _sortListByPriority();
//     }
//   }

//   void _sortListByPriority(){
//     var data = todos$.value;
//     data.sort((a,b) => _ascending ? a.priority.compareTo(b.priority) : b.priority.compareTo(a.priority));
//     todos$.add(data);
//   }

//   void _sortListByDate(){
//     var data = todos$.value;
//     data.sort((a,b) => _ascending ? a.created.compareTo(b.created) : b.created.compareTo(a.created));
//     todos$.add(data);
//   }

//   void _updateFilteredList(){
//     _todosFiltered = [..._todos];
//     for (var filter in _filters) {
//       _todosFiltered = _todosFiltered.where((element) => element.tags.contains(filter)).toList();
//     }
//   }
// }
