import 'package:flutter/material.dart';
import 'package:my_todo_flutter/models/todo_model.dart';
import 'package:my_todo_flutter/widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  final List<TodoModel> todos;

  const TodoList({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return TodoItem(todo: todos.elementAt(index));
        });
  }
}
