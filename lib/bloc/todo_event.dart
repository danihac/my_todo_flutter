part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.loadMockTasks() = _LoadMockTasksEvent;

  const factory TodoEvent.getTodos() = _GetTodosEvent;

  const factory TodoEvent.addTask({
    required TodoModel task,
  }) = _AddTaskEvent;

  const factory TodoEvent.toggleStatus({
    required String taskId,
  }) = _ToggleStatusEvent;

  const factory TodoEvent.changeViewStatus({
    required TodoStatus showStatus,
  }) = _ChangeViewStatusEvent;

  const factory TodoEvent.changeSorting({
    SortBy? sortBy,
    bool? ascending,
  }) = _ChangeSortingEvent;

  const factory TodoEvent.addNewFilter({
    required String filter,
  }) = _AddNewFilterEvent;
}
