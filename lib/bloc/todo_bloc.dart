import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_todo_flutter/models/todo_model.dart';

import '../repositories/todo_repository.dart';

part 'todo_bloc.freezed.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository _todoRepository;

  TodoBloc(this._todoRepository) : super(TodoState.initial()) {
    on<_LoadMockTasksEvent>(_onLoadMockTasksEvent);
    on<_GetTodosEvent>(_onGetTodosEvent);
    on<_AddTaskEvent>(_onAddTaskEvent);
    on<_ToggleStatusEvent>(_onToggleStatusEvent);
    on<_ChangeViewStatusEvent>(_onChangeViewStatusEvent);
    on<_ChangeSortingEvent>(_onChangeSortingEvent);
    on<_AddNewFilterEvent>(_onAddNewFilterEvent);
  }

  Future<void> _onLoadMockTasksEvent(_LoadMockTasksEvent event, Emitter emit) async {
    _todoRepository.addNewItem(TodoModel.createNew('Test todo', 1));
    _todoRepository.addNewItem(TodoModel.createNew('Test todo 2', 2));
    _todoRepository.addNewItem(TodoModel.createNew('Test todo 3', 5));
    _todoRepository.addNewItem(TodoModel.createNew('Test todo 4', 3));

    add(const TodoEvent.getTodos());
  }

  Future<void> _onGetTodosEvent(_GetTodosEvent event, Emitter emit) async {
    var _todos = _todoRepository.getTodos(state);
    emit(state.copyWith(
      isLoading: false,
      todos: _todos,
    ));
  }

  Future<void> _onAddTaskEvent(_AddTaskEvent event, Emitter emit) async {
    emit(state.copyWith(isLoading: true));
    _todoRepository.addNewItem(event.task);
    add(const TodoEvent.getTodos());
  }

  Future<void> _onAddNewFilterEvent(_AddNewFilterEvent event, Emitter emit) async {
    emit(state.copyWith(isLoading: true, filters: [...state.filters, event.filter]));
    add(const TodoEvent.getTodos());
  }

  Future<void> _onChangeViewStatusEvent(_ChangeViewStatusEvent event, Emitter emit) async {
    emit(state.copyWith(
      showStatus: event.showStatus,
    ));
    add(const TodoEvent.getTodos());
  }

  Future<void> _onToggleStatusEvent(_ToggleStatusEvent event, Emitter emit) async {
    emit(state.copyWith(isLoading: true));

    TodoModel _myTodo = state.todos.firstWhere((task) => task.id == event.taskId);
    TodoModel _myNewTodo = _myTodo.copyWith(isComplete: !_myTodo.isComplete);

    _todoRepository.updateTodo(_myNewTodo);
    add(const TodoEvent.getTodos());
  }

  Future<void> _onChangeSortingEvent(_ChangeSortingEvent event, Emitter emit) async {
    emit(state.copyWith(
      sortBy: event.sortBy ?? state.sortBy,
      ascending: event.ascending ?? state.ascending,
    ));
    add(const TodoEvent.getTodos());
  }
}
