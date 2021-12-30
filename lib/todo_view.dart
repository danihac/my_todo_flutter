import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_flutter/models/todo_model.dart';
import 'package:my_todo_flutter/services/todo_repository.dart';
import 'package:my_todo_flutter/widgets/todo_add_new.dart';
import 'package:my_todo_flutter/widgets/todo_filter_bar.dart';
import 'package:my_todo_flutter/widgets/todo_list.dart';

class TodoView extends StatefulWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  _TodoViewState createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  final TodoRepository _todoRepository = TodoRepository.instance;
  int _selectedTab = 0;
  bool _ascending = true;
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _todoRepository.addNewItem(TodoModel.createNew('Test todo', 1));
    _todoRepository.addNewItem(TodoModel.createNew('Test todo 2', 2));
    _todoRepository.addNewItem(TodoModel.createNew('Test todo 3', 5));
    _todoRepository.addNewItem(TodoModel.createNew('Test todo 4', 3));
  }

  @override
  Widget build(BuildContext context) {
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
                  setState(() {
                    _ascending = !_ascending;
                    _todoRepository.changeSorting(ascending: _ascending, sortByCreateDate: false);
                  });
                }),
            CupertinoButton(
                child: Icon(
                  _ascending ? CupertinoIcons.sort_down : CupertinoIcons.sort_up,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _ascending = !_ascending;
                    _todoRepository.changeSorting(ascending: _ascending, sortByCreateDate: true);
                  });
                })
          ],
        ),
        body: Column(
          children: [
            // TodoFilterBar(
            //   filters: _todoRepository.filters,
            //   removeTag: _todoRepository.removeFilter,
            // )
            StreamBuilder<List<String>>(
                stream: _todoRepository.filters$,
                builder: (_, stream) {
                  return TodoFilterBar(
                    filters: stream.data ?? [],
                    removeTag: _todoRepository.removeFilter,
                  );
                }),
            StreamBuilder<List<TodoModel>>(
                stream: _todoRepository.todos$,
                builder: (_, stream) {
                  return TodoList(todos: stream.data ?? []);
                }),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.add, size: 20), label: 'Todo'),
            const BottomNavigationBarItem(icon: Icon(Icons.done, size: 20), label: 'Done'),
            const BottomNavigationBarItem(icon: Icon(Icons.list, size: 20), label: 'All'),
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
        ));
  }

  void _addNewTask(String text, int priority, BuildContext ctx) {
    // TODO: add animation
    _todoRepository.addNewItem(TodoModel.createNew(text, priority));
    Navigator.of(ctx).pop();
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
                  TodoAddNewItem(addTodoFn: _addNewTask),
                ],
              ),
            ),
          );
        });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
      _todoRepository.changeTab(index);
    });
  }
}
