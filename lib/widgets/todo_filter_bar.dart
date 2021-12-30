import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoFilterBar extends StatelessWidget {
  final List<String> filters;
  final Function(String tag) removeTag;

  const TodoFilterBar({
    Key? key,
    required this.filters,
    required this.removeTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [...filters.map((e) => _filterView(e)).toList()],
    );
  }

  Widget _filterView(String filter) {
    return ActionChip(label: Text(filter), onPressed: () => removeTag(filter),);
  }
}
