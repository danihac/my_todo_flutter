import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TodoAddNewItem extends StatefulWidget {
  final Function(String text, int priority, BuildContext ctx) addTodoFn;

  const TodoAddNewItem({Key? key, required this.addTodoFn}) : super(key: key);

  @override
  State<TodoAddNewItem> createState() => _TodoAddNewItemState();
}

class _TodoAddNewItemState extends State<TodoAddNewItem> {
  final _textController = TextEditingController();
  final _priorityController = TextEditingController();

  bool canAdd() {
    return _textController.text.isNotEmpty && _priorityController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Add new task to yours todo list 😁',
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 10),
        CupertinoTextField(
          controller: _textController,
          autofocus: true,
          autocorrect: true,
          placeholder: 'Add task',
        ),
        const SizedBox(height: 10),
        CupertinoTextField(
          controller: _priorityController,
          keyboardType: TextInputType.number,
          placeholder: 'Priority from 1 to 5',
          onEditingComplete: () => _tryAddNewTodo(context),
        ),
        const SizedBox(height: 20),
        CupertinoButton(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          onPressed: () => _tryAddNewTodo(context),
          child: const Text('Add'),
          color: Colors.blue,
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  void _tryAddNewTodo(BuildContext ctx) {
    if (canAdd()) {
      widget.addTodoFn(_textController.text, int.parse(_priorityController.text), ctx);
    }
  }
}
