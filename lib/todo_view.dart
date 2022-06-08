import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo_flutter/bloc/todo_bloc.dart';
import 'package:my_todo_flutter/models/todo_model.dart';
import 'package:my_todo_flutter/widgets/todo_add_new.dart';
import 'package:my_todo_flutter/widgets/todo_filter_bar.dart';
import 'package:my_todo_flutter/widgets/todo_list.dart';

class TodoView extends StatefulWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  _TodoViewState createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  int _selectedTab = 0;
  bool _ascending = true;
  final textController = TextEditingController();

  @override
  void initState() {
    BlocProvider.of<TodoBloc>(context).add(const TodoEvent.loadMockTasks());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
      _ascending = state.ascending;

      return Scaffold(
        appBar: AppBar(
          title: const Text('My TODO'),
          actions: [
            CupertinoButton(
              child: Icon(
                _ascending
                    ? CupertinoIcons.sort_down_circle_fill
                    : CupertinoIcons.sort_up_circle_fill,
                color: Colors.white,
              ),
              onPressed: () {
                _changeSorting(ascending: !_ascending, sortByCreateDate: false);
              },
            ),
            CupertinoButton(
              child: Icon(
                _ascending ? CupertinoIcons.sort_down : CupertinoIcons.sort_up,
                color: Colors.white,
              ),
              onPressed: () {
                _changeSorting(ascending: !_ascending, sortByCreateDate: true);
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TodoFilterBar(
                filters: state.filters,
                removeTag: _removeFilter,
              ),
              TodoList(todos: state.todos),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.add, size: 20), label: 'Todo'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.done, size: 20), label: 'Done'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.list, size: 20), label: 'All'),
          ].toList(),
          currentIndex: _selectedTab,
          onTap: (int idx) {
            _onItemTapped(idx);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _startAddingNewTask(context),
          tooltip: 'Add new task',
          child: const Icon(Icons.add),
        ),
      );
    });
  }

  void _removeFilter(String filter) {
    // BlocProvider.of<TodoBloc>(context).add(TodoEvent.removeFilter(filter: tag));
  }

  void _addNewTask(TodoModel newTask) {
    BlocProvider.of<TodoBloc>(context).add(TodoEvent.addTask(task: newTask));
    Navigator.of(context).pop();
  }

  void _startAddingNewTask(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        isScrollControlled: true,
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TodoAddNewItem(
                    onAddTodoCallback: _addNewTask,
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _changeSorting(
      {required bool ascending, required bool sortByCreateDate}) {
    BlocProvider.of<TodoBloc>(context).add(TodoEvent.changeSorting(
      ascending: ascending,
      sortBy: sortByCreateDate ? SortBy.date : SortBy.priority,
    ));
  }

  void _onItemTapped(int index) {
    TodoStatus status = TodoStatus.all;
    switch (index) {
      case 0:
        status = TodoStatus.todo;
        break;

      case 1:
        status = TodoStatus.done;
        break;
    }

    setState(() {
      _selectedTab = index;
      BlocProvider.of<TodoBloc>(context)
          .add(TodoEvent.changeViewStatus(showStatus: status));
    });
  }
}
