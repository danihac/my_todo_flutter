import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:my_todo_flutter/models/todo_model.dart';

class TodoAddNewItem extends StatefulWidget {
  final Function(TodoModel newTodo) onAddTodoCallback;

  const TodoAddNewItem({Key? key, required this.onAddTodoCallback})
      : super(key: key);

  @override
  State<TodoAddNewItem> createState() => _TodoAddNewItemState();
}

class _TodoAddNewItemState extends State<TodoAddNewItem> {
  final _textController = TextEditingController();
  final _priorityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Text(
            'Add new task to yours todo list 😁',
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          PlatformTextFormField(
            controller: _textController,
            autofocus: true,
            autocorrect: true,
            hintText: 'Add task title',
            validator: titleValidator,
            onEditingComplete: () => _tryAddNewTodo(context, _formKey),
          ),
          const SizedBox(height: 10),
          PlatformTextFormField(
            controller: _priorityController,
            keyboardType: TextInputType.number,
            hintText: 'Priority from 1 to 5',
            validator: priorityValidator,
            onEditingComplete: () => _tryAddNewTodo(context, _formKey),
          ),
          const SizedBox(height: 20),
          PlatformElevatedButton(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            onPressed: () => _tryAddNewTodo(context, _formKey),
            child: const Text('Add'),
            color: Colors.blue,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  void _tryAddNewTodo(BuildContext ctx, GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      final newTask = TodoModel.createNew(
        _textController.text,
        int.parse(_priorityController.text),
      );
      widget.onAddTodoCallback(newTask);
    }
  }

  final titleValidator = MultiValidator([
    RequiredValidator(errorText: 'Task title is required'),
    MaxLengthValidator(50, errorText: 'Title is too long. Max length is 50'),
  ]);

  final priorityValidator = MultiValidator([
    RequiredValidator(errorText: 'Priority is required'),
    RangeValidator(min: 1, max: 5, errorText: 'Priority must be from 1 to 5'),
  ]);
}
