class TodoModel {
  int? id;
  String text;
  int priority;
  bool isComplete;

  TodoModel({
    this.id,
    required this.text,
    required this.priority,
    this.isComplete = false,
  });
}
