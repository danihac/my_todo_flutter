import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TodoAddNewItem extends StatefulWidget {
  final Function(String text, int priority) addTodoFn;

  const TodoAddNewItem(this.addTodoFn, {Key? key}) : super(key: key);

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
        TextField(
          controller: _textController,
          decoration: const InputDecoration(hintText: 'Add task'),
        ),
        TextField(
          controller: _priorityController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(hintText: 'Priority from 1 to 5'),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            onPressed: () => canAdd()
                ? widget.addTodoFn(_textController.text, int.parse(_priorityController.text))
                : null,
            child: const Text('Add'))
      ],
    );
  }
}
