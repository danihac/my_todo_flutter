import 'package:flutter/material.dart';
import 'package:my_todo_flutter/models/todo_model.dart';
import 'package:my_todo_flutter/services/todo_repository.dart';

class TodoItem extends StatelessWidget {
  final TodoModel todo;
  final TodoRepository _todoRepository = TodoRepository.instance;

  TodoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              todo.priority.toString(),
              style: TextStyle(
                fontWeight:
                    todo.priority < 3 ? FontWeight.bold : FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
              child: Text(
            todo.text,
            style: TextStyle(
                fontWeight:
                    todo.isComplete ? FontWeight.normal : FontWeight.bold),
          )),
          IconButton(
            onPressed: () => _markAsDone(),
            icon: Icon(todo.isComplete ? Icons.done : Icons.circle_outlined),
            color: todo.isComplete ? Colors.green : Colors.grey,
          ),
        ],
      ),
    );
  }

  void _markAsDone() {
    _todoRepository.markAsDone(todo.id ?? 0);
  }
}
