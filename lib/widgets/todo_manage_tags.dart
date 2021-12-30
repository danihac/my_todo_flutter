import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoManageTagsView extends StatefulWidget {
  final List<String> tags;
  final Function(String tag) removeTag;
  final Function(String tag) addTag;

  const TodoManageTagsView({
    Key? key,
    required this.tags,
    required this.removeTag,
    required this.addTag,
  }) : super(key: key);

  @override
  State<TodoManageTagsView> createState() => _TodoManageTagsViewState();
}

class _TodoManageTagsViewState extends State<TodoManageTagsView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CupertinoTextField(
          controller: _controller,
          autofocus: true,
          placeholder: 'add new tag',
          onEditingComplete: () => setState(() {
            var ifExist = widget.tags.where((elem) => elem == _controller.text);
            if (ifExist.isEmpty) {
              widget.addTag(_controller.text);
              _controller.text = '';
            }
          }),
        ),
        ...widget.tags.map((e) => _existingTagView(e)).toList()
      ],
    );
  }

  Widget _existingTagView(String tag) {
    return Row(
      children: [
        Expanded(child: Text('#$tag')),
        IconButton(
          onPressed: () {
            setState(() {
              widget.tags.removeWhere((elem) => elem == tag);
            });
          },
          icon: const Icon(Icons.remove_circle),
        ),
      ],
    );
  }
}
