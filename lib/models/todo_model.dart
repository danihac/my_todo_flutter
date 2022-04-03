import 'package:uuid/uuid.dart';

class TodoModel {
  String id;
  String text;
  int priority;
  bool isComplete;
  DateTime created;
  List<String> tags;

  TodoModel({
    required this.id,
    required this.text,
    required this.priority,
    this.isComplete = false,
    required this.created,
    required this.tags,
  });

  factory TodoModel.createNew(String text, int priority) {
    return TodoModel(
      text: text,
      created: DateTime.now(),
      priority: priority,
      id: const Uuid().v1(),
      isComplete: false,
      tags: [],
    );
  }

  TodoModel copyWith({
    String? id,
    String? text,
    int? priority,
    bool? isComplete,
    DateTime? created,
    List<String>? tags,
  }) {
    return TodoModel(
      id: id ?? this.id,
      text: text ?? this.text,
      priority: priority ?? this.priority,
      isComplete: isComplete ?? this.isComplete,
      created: created ?? this.created,
      tags: tags ?? this.tags,
    );
  }
}
