import 'package:flutter/material.dart';
import 'package:my_todo_flutter/models/todo_model.dart';
import 'package:my_todo_flutter/services/todo_repository.dart';
import 'package:my_todo_flutter/widgets/todo_add_new.dart';
import 'package:my_todo_flutter/widgets/todo_list.dart';

class TodoView extends StatefulWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  _TodoViewState createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  final TodoRepository _todoRepository = TodoRepository.instance;
  int _selectedTab = 0;
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _todoRepository
        .addNewItem(TodoModel(id: 0, text: 'Test todo', priority: 1));
    _todoRepository
        .addNewItem(TodoModel(id: 1, text: 'Test todo2', priority: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My TODO'),
        ),
        body: StreamBuilder<List<TodoModel>>(
            stream: _todoRepository.todos$,
            builder: (_, stream) {
              return TodoList(todos: stream.data ?? []);
            }),
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
        ));
  }

  void _addNewTask(String text, int priority) {
    _todoRepository.addNewItem(TodoModel(text: text, priority: priority));
  }

  void _addNewTaskWithAnimation(String text, int priority) {
    // TODO: add animation
    _todoRepository.addNewItem(TodoModel(text: text, priority: priority));
  }

  void _startAddingNewTask(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        isScrollControlled: true,
        builder: (_) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TodoAddNewItem(_addNewTaskWithAnimation),
                ],
              ),
            ),
          );
        });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
      _todoRepository.filter(index);
    });
  }
}
