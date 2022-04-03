part of 'todo_bloc.dart';

enum SortBy { priority, date }
enum TodoStatus { todo, done, all }

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required bool isLoading,
    required List<TodoModel> todos,
    required List<String> filters,
    required TodoStatus showStatus,
    required SortBy sortBy,
    required bool ascending,
  }) = _TodoState;

  factory TodoState.initial() => const TodoState(
        isLoading: false,
        todos: [],
        filters: [],
        showStatus: TodoStatus.todo,
        sortBy: SortBy.date,
        ascending: true,
      );
}
