import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_flutter/models/todo_model.dart';
import 'package:my_todo_flutter/services/todo_repository.dart';

class TodoItem extends StatefulWidget {
  final TodoModel todo;

  const TodoItem({Key? key, required this.todo}) : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  final TodoRepository _todoRepository = TodoRepository.instance;
  final TextEditingController _controller = TextEditingController();
  bool _editMode = false;

  @override
  void initState() {
    _controller.text = widget.todo.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              widget.todo.priority.toString(),
              style: TextStyle(
                fontWeight: widget.todo.priority < 3 ? FontWeight.bold : FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
                onTap: () {
                  setState(() {
                    _editMode = true;
                  });
                },
                child: _textWidget()),
          ),
          IconButton(
            onPressed: () => _markAsDone(),
            icon: Icon(widget.todo.isComplete ? Icons.done : Icons.circle_outlined),
            color: widget.todo.isComplete ? Colors.green : Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _textWidget() {
    return _editMode
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CupertinoTextField(
                  controller: _controller,
                  autofocus: true,
                  maxLines: 1,
                  onEditingComplete: () => setState(() {
                    _editMode = false;
                  }),
                ),
              ),
              IconButton(
                onPressed: () => _approveChange(),
                icon: const Icon(Icons.check_circle),
                color: Colors.green,
              ),
              IconButton(
                onPressed: () => _cancelChange(),
                icon: const Icon(Icons.cancel),
                color: Colors.red,
              )
            ],
          )
        : Text(
            widget.todo.text,
            style:
                TextStyle(fontWeight: widget.todo.isComplete ? FontWeight.normal : FontWeight.bold),
          );
  }

  void _approveChange() {
    setState(() {
      _editMode = false;
      widget.todo.text = _controller.text;
    });
  }

  void _cancelChange() {
    setState(() {
      _editMode = false;
      _controller.text = widget.todo.text;
    });
  }

  void _markAsDone() {
    _todoRepository.markAsDone(widget.todo.id);
  }
}
