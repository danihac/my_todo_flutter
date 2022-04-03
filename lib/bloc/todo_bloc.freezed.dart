// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoEventTearOff {
  const _$TodoEventTearOff();

  _LoadMockTasksEvent loadMockTasks() {
    return const _LoadMockTasksEvent();
  }

  _GetTodosEvent getTodos() {
    return const _GetTodosEvent();
  }

  _AddTaskEvent addTask({required TodoModel task}) {
    return _AddTaskEvent(
      task: task,
    );
  }

  _ToggleStatusEvent toggleStatus({required String taskId}) {
    return _ToggleStatusEvent(
      taskId: taskId,
    );
  }

  _ChangeViewStatusEvent changeViewStatus({required TodoStatus showStatus}) {
    return _ChangeViewStatusEvent(
      showStatus: showStatus,
    );
  }

  _ChangeSortingEvent changeSorting({SortBy? sortBy, bool? ascending}) {
    return _ChangeSortingEvent(
      sortBy: sortBy,
      ascending: ascending,
    );
  }

  _AddNewFilterEvent addNewFilter({required String filter}) {
    return _AddNewFilterEvent(
      filter: filter,
    );
  }
}

/// @nodoc
const $TodoEvent = _$TodoEventTearOff();

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMockTasks,
    required TResult Function() getTodos,
    required TResult Function(TodoModel task) addTask,
    required TResult Function(String taskId) toggleStatus,
    required TResult Function(TodoStatus showStatus) changeViewStatus,
    required TResult Function(SortBy? sortBy, bool? ascending) changeSorting,
    required TResult Function(String filter) addNewFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMockTasksEvent value) loadMockTasks,
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_ToggleStatusEvent value) toggleStatus,
    required TResult Function(_ChangeViewStatusEvent value) changeViewStatus,
    required TResult Function(_ChangeSortingEvent value) changeSorting,
    required TResult Function(_AddNewFilterEvent value) addNewFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;
}

/// @nodoc
abstract class _$LoadMockTasksEventCopyWith<$Res> {
  factory _$LoadMockTasksEventCopyWith(
          _LoadMockTasksEvent value, $Res Function(_LoadMockTasksEvent) then) =
      __$LoadMockTasksEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMockTasksEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res>
    implements _$LoadMockTasksEventCopyWith<$Res> {
  __$LoadMockTasksEventCopyWithImpl(
      _LoadMockTasksEvent _value, $Res Function(_LoadMockTasksEvent) _then)
      : super(_value, (v) => _then(v as _LoadMockTasksEvent));

  @override
  _LoadMockTasksEvent get _value => super._value as _LoadMockTasksEvent;
}

/// @nodoc

class _$_LoadMockTasksEvent implements _LoadMockTasksEvent {
  const _$_LoadMockTasksEvent();

  @override
  String toString() {
    return 'TodoEvent.loadMockTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadMockTasksEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMockTasks,
    required TResult Function() getTodos,
    required TResult Function(TodoModel task) addTask,
    required TResult Function(String taskId) toggleStatus,
    required TResult Function(TodoStatus showStatus) changeViewStatus,
    required TResult Function(SortBy? sortBy, bool? ascending) changeSorting,
    required TResult Function(String filter) addNewFilter,
  }) {
    return loadMockTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
  }) {
    return loadMockTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
    required TResult orElse(),
  }) {
    if (loadMockTasks != null) {
      return loadMockTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMockTasksEvent value) loadMockTasks,
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_ToggleStatusEvent value) toggleStatus,
    required TResult Function(_ChangeViewStatusEvent value) changeViewStatus,
    required TResult Function(_ChangeSortingEvent value) changeSorting,
    required TResult Function(_AddNewFilterEvent value) addNewFilter,
  }) {
    return loadMockTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
  }) {
    return loadMockTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
    required TResult orElse(),
  }) {
    if (loadMockTasks != null) {
      return loadMockTasks(this);
    }
    return orElse();
  }
}

abstract class _LoadMockTasksEvent implements TodoEvent {
  const factory _LoadMockTasksEvent() = _$_LoadMockTasksEvent;
}

/// @nodoc
abstract class _$GetTodosEventCopyWith<$Res> {
  factory _$GetTodosEventCopyWith(
          _GetTodosEvent value, $Res Function(_GetTodosEvent) then) =
      __$GetTodosEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetTodosEventCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$GetTodosEventCopyWith<$Res> {
  __$GetTodosEventCopyWithImpl(
      _GetTodosEvent _value, $Res Function(_GetTodosEvent) _then)
      : super(_value, (v) => _then(v as _GetTodosEvent));

  @override
  _GetTodosEvent get _value => super._value as _GetTodosEvent;
}

/// @nodoc

class _$_GetTodosEvent implements _GetTodosEvent {
  const _$_GetTodosEvent();

  @override
  String toString() {
    return 'TodoEvent.getTodos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetTodosEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMockTasks,
    required TResult Function() getTodos,
    required TResult Function(TodoModel task) addTask,
    required TResult Function(String taskId) toggleStatus,
    required TResult Function(TodoStatus showStatus) changeViewStatus,
    required TResult Function(SortBy? sortBy, bool? ascending) changeSorting,
    required TResult Function(String filter) addNewFilter,
  }) {
    return getTodos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
  }) {
    return getTodos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMockTasksEvent value) loadMockTasks,
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_ToggleStatusEvent value) toggleStatus,
    required TResult Function(_ChangeViewStatusEvent value) changeViewStatus,
    required TResult Function(_ChangeSortingEvent value) changeSorting,
    required TResult Function(_AddNewFilterEvent value) addNewFilter,
  }) {
    return getTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
  }) {
    return getTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(this);
    }
    return orElse();
  }
}

abstract class _GetTodosEvent implements TodoEvent {
  const factory _GetTodosEvent() = _$_GetTodosEvent;
}

/// @nodoc
abstract class _$AddTaskEventCopyWith<$Res> {
  factory _$AddTaskEventCopyWith(
          _AddTaskEvent value, $Res Function(_AddTaskEvent) then) =
      __$AddTaskEventCopyWithImpl<$Res>;
  $Res call({TodoModel task});
}

/// @nodoc
class __$AddTaskEventCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$AddTaskEventCopyWith<$Res> {
  __$AddTaskEventCopyWithImpl(
      _AddTaskEvent _value, $Res Function(_AddTaskEvent) _then)
      : super(_value, (v) => _then(v as _AddTaskEvent));

  @override
  _AddTaskEvent get _value => super._value as _AddTaskEvent;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_AddTaskEvent(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }
}

/// @nodoc

class _$_AddTaskEvent implements _AddTaskEvent {
  const _$_AddTaskEvent({required this.task});

  @override
  final TodoModel task;

  @override
  String toString() {
    return 'TodoEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTaskEvent &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$AddTaskEventCopyWith<_AddTaskEvent> get copyWith =>
      __$AddTaskEventCopyWithImpl<_AddTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMockTasks,
    required TResult Function() getTodos,
    required TResult Function(TodoModel task) addTask,
    required TResult Function(String taskId) toggleStatus,
    required TResult Function(TodoStatus showStatus) changeViewStatus,
    required TResult Function(SortBy? sortBy, bool? ascending) changeSorting,
    required TResult Function(String filter) addNewFilter,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMockTasksEvent value) loadMockTasks,
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_ToggleStatusEvent value) toggleStatus,
    required TResult Function(_ChangeViewStatusEvent value) changeViewStatus,
    required TResult Function(_ChangeSortingEvent value) changeSorting,
    required TResult Function(_AddNewFilterEvent value) addNewFilter,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTaskEvent implements TodoEvent {
  const factory _AddTaskEvent({required TodoModel task}) = _$_AddTaskEvent;

  TodoModel get task;
  @JsonKey(ignore: true)
  _$AddTaskEventCopyWith<_AddTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleStatusEventCopyWith<$Res> {
  factory _$ToggleStatusEventCopyWith(
          _ToggleStatusEvent value, $Res Function(_ToggleStatusEvent) then) =
      __$ToggleStatusEventCopyWithImpl<$Res>;
  $Res call({String taskId});
}

/// @nodoc
class __$ToggleStatusEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res>
    implements _$ToggleStatusEventCopyWith<$Res> {
  __$ToggleStatusEventCopyWithImpl(
      _ToggleStatusEvent _value, $Res Function(_ToggleStatusEvent) _then)
      : super(_value, (v) => _then(v as _ToggleStatusEvent));

  @override
  _ToggleStatusEvent get _value => super._value as _ToggleStatusEvent;

  @override
  $Res call({
    Object? taskId = freezed,
  }) {
    return _then(_ToggleStatusEvent(
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ToggleStatusEvent implements _ToggleStatusEvent {
  const _$_ToggleStatusEvent({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'TodoEvent.toggleStatus(taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToggleStatusEvent &&
            const DeepCollectionEquality().equals(other.taskId, taskId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(taskId));

  @JsonKey(ignore: true)
  @override
  _$ToggleStatusEventCopyWith<_ToggleStatusEvent> get copyWith =>
      __$ToggleStatusEventCopyWithImpl<_ToggleStatusEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMockTasks,
    required TResult Function() getTodos,
    required TResult Function(TodoModel task) addTask,
    required TResult Function(String taskId) toggleStatus,
    required TResult Function(TodoStatus showStatus) changeViewStatus,
    required TResult Function(SortBy? sortBy, bool? ascending) changeSorting,
    required TResult Function(String filter) addNewFilter,
  }) {
    return toggleStatus(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
  }) {
    return toggleStatus?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
    required TResult orElse(),
  }) {
    if (toggleStatus != null) {
      return toggleStatus(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMockTasksEvent value) loadMockTasks,
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_ToggleStatusEvent value) toggleStatus,
    required TResult Function(_ChangeViewStatusEvent value) changeViewStatus,
    required TResult Function(_ChangeSortingEvent value) changeSorting,
    required TResult Function(_AddNewFilterEvent value) addNewFilter,
  }) {
    return toggleStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
  }) {
    return toggleStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
    required TResult orElse(),
  }) {
    if (toggleStatus != null) {
      return toggleStatus(this);
    }
    return orElse();
  }
}

abstract class _ToggleStatusEvent implements TodoEvent {
  const factory _ToggleStatusEvent({required String taskId}) =
      _$_ToggleStatusEvent;

  String get taskId;
  @JsonKey(ignore: true)
  _$ToggleStatusEventCopyWith<_ToggleStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeViewStatusEventCopyWith<$Res> {
  factory _$ChangeViewStatusEventCopyWith(_ChangeViewStatusEvent value,
          $Res Function(_ChangeViewStatusEvent) then) =
      __$ChangeViewStatusEventCopyWithImpl<$Res>;
  $Res call({TodoStatus showStatus});
}

/// @nodoc
class __$ChangeViewStatusEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res>
    implements _$ChangeViewStatusEventCopyWith<$Res> {
  __$ChangeViewStatusEventCopyWithImpl(_ChangeViewStatusEvent _value,
      $Res Function(_ChangeViewStatusEvent) _then)
      : super(_value, (v) => _then(v as _ChangeViewStatusEvent));

  @override
  _ChangeViewStatusEvent get _value => super._value as _ChangeViewStatusEvent;

  @override
  $Res call({
    Object? showStatus = freezed,
  }) {
    return _then(_ChangeViewStatusEvent(
      showStatus: showStatus == freezed
          ? _value.showStatus
          : showStatus // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
    ));
  }
}

/// @nodoc

class _$_ChangeViewStatusEvent implements _ChangeViewStatusEvent {
  const _$_ChangeViewStatusEvent({required this.showStatus});

  @override
  final TodoStatus showStatus;

  @override
  String toString() {
    return 'TodoEvent.changeViewStatus(showStatus: $showStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeViewStatusEvent &&
            const DeepCollectionEquality()
                .equals(other.showStatus, showStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(showStatus));

  @JsonKey(ignore: true)
  @override
  _$ChangeViewStatusEventCopyWith<_ChangeViewStatusEvent> get copyWith =>
      __$ChangeViewStatusEventCopyWithImpl<_ChangeViewStatusEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMockTasks,
    required TResult Function() getTodos,
    required TResult Function(TodoModel task) addTask,
    required TResult Function(String taskId) toggleStatus,
    required TResult Function(TodoStatus showStatus) changeViewStatus,
    required TResult Function(SortBy? sortBy, bool? ascending) changeSorting,
    required TResult Function(String filter) addNewFilter,
  }) {
    return changeViewStatus(showStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
  }) {
    return changeViewStatus?.call(showStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
    required TResult orElse(),
  }) {
    if (changeViewStatus != null) {
      return changeViewStatus(showStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMockTasksEvent value) loadMockTasks,
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_ToggleStatusEvent value) toggleStatus,
    required TResult Function(_ChangeViewStatusEvent value) changeViewStatus,
    required TResult Function(_ChangeSortingEvent value) changeSorting,
    required TResult Function(_AddNewFilterEvent value) addNewFilter,
  }) {
    return changeViewStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
  }) {
    return changeViewStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
    required TResult orElse(),
  }) {
    if (changeViewStatus != null) {
      return changeViewStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeViewStatusEvent implements TodoEvent {
  const factory _ChangeViewStatusEvent({required TodoStatus showStatus}) =
      _$_ChangeViewStatusEvent;

  TodoStatus get showStatus;
  @JsonKey(ignore: true)
  _$ChangeViewStatusEventCopyWith<_ChangeViewStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeSortingEventCopyWith<$Res> {
  factory _$ChangeSortingEventCopyWith(
          _ChangeSortingEvent value, $Res Function(_ChangeSortingEvent) then) =
      __$ChangeSortingEventCopyWithImpl<$Res>;
  $Res call({SortBy? sortBy, bool? ascending});
}

/// @nodoc
class __$ChangeSortingEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res>
    implements _$ChangeSortingEventCopyWith<$Res> {
  __$ChangeSortingEventCopyWithImpl(
      _ChangeSortingEvent _value, $Res Function(_ChangeSortingEvent) _then)
      : super(_value, (v) => _then(v as _ChangeSortingEvent));

  @override
  _ChangeSortingEvent get _value => super._value as _ChangeSortingEvent;

  @override
  $Res call({
    Object? sortBy = freezed,
    Object? ascending = freezed,
  }) {
    return _then(_ChangeSortingEvent(
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy?,
      ascending: ascending == freezed
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ChangeSortingEvent implements _ChangeSortingEvent {
  const _$_ChangeSortingEvent({this.sortBy, this.ascending});

  @override
  final SortBy? sortBy;
  @override
  final bool? ascending;

  @override
  String toString() {
    return 'TodoEvent.changeSorting(sortBy: $sortBy, ascending: $ascending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeSortingEvent &&
            const DeepCollectionEquality().equals(other.sortBy, sortBy) &&
            const DeepCollectionEquality().equals(other.ascending, ascending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sortBy),
      const DeepCollectionEquality().hash(ascending));

  @JsonKey(ignore: true)
  @override
  _$ChangeSortingEventCopyWith<_ChangeSortingEvent> get copyWith =>
      __$ChangeSortingEventCopyWithImpl<_ChangeSortingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMockTasks,
    required TResult Function() getTodos,
    required TResult Function(TodoModel task) addTask,
    required TResult Function(String taskId) toggleStatus,
    required TResult Function(TodoStatus showStatus) changeViewStatus,
    required TResult Function(SortBy? sortBy, bool? ascending) changeSorting,
    required TResult Function(String filter) addNewFilter,
  }) {
    return changeSorting(sortBy, ascending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
  }) {
    return changeSorting?.call(sortBy, ascending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
    required TResult orElse(),
  }) {
    if (changeSorting != null) {
      return changeSorting(sortBy, ascending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMockTasksEvent value) loadMockTasks,
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_ToggleStatusEvent value) toggleStatus,
    required TResult Function(_ChangeViewStatusEvent value) changeViewStatus,
    required TResult Function(_ChangeSortingEvent value) changeSorting,
    required TResult Function(_AddNewFilterEvent value) addNewFilter,
  }) {
    return changeSorting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
  }) {
    return changeSorting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
    required TResult orElse(),
  }) {
    if (changeSorting != null) {
      return changeSorting(this);
    }
    return orElse();
  }
}

abstract class _ChangeSortingEvent implements TodoEvent {
  const factory _ChangeSortingEvent({SortBy? sortBy, bool? ascending}) =
      _$_ChangeSortingEvent;

  SortBy? get sortBy;
  bool? get ascending;
  @JsonKey(ignore: true)
  _$ChangeSortingEventCopyWith<_ChangeSortingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddNewFilterEventCopyWith<$Res> {
  factory _$AddNewFilterEventCopyWith(
          _AddNewFilterEvent value, $Res Function(_AddNewFilterEvent) then) =
      __$AddNewFilterEventCopyWithImpl<$Res>;
  $Res call({String filter});
}

/// @nodoc
class __$AddNewFilterEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res>
    implements _$AddNewFilterEventCopyWith<$Res> {
  __$AddNewFilterEventCopyWithImpl(
      _AddNewFilterEvent _value, $Res Function(_AddNewFilterEvent) _then)
      : super(_value, (v) => _then(v as _AddNewFilterEvent));

  @override
  _AddNewFilterEvent get _value => super._value as _AddNewFilterEvent;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_AddNewFilterEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddNewFilterEvent implements _AddNewFilterEvent {
  const _$_AddNewFilterEvent({required this.filter});

  @override
  final String filter;

  @override
  String toString() {
    return 'TodoEvent.addNewFilter(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddNewFilterEvent &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$AddNewFilterEventCopyWith<_AddNewFilterEvent> get copyWith =>
      __$AddNewFilterEventCopyWithImpl<_AddNewFilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMockTasks,
    required TResult Function() getTodos,
    required TResult Function(TodoModel task) addTask,
    required TResult Function(String taskId) toggleStatus,
    required TResult Function(TodoStatus showStatus) changeViewStatus,
    required TResult Function(SortBy? sortBy, bool? ascending) changeSorting,
    required TResult Function(String filter) addNewFilter,
  }) {
    return addNewFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
  }) {
    return addNewFilter?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMockTasks,
    TResult Function()? getTodos,
    TResult Function(TodoModel task)? addTask,
    TResult Function(String taskId)? toggleStatus,
    TResult Function(TodoStatus showStatus)? changeViewStatus,
    TResult Function(SortBy? sortBy, bool? ascending)? changeSorting,
    TResult Function(String filter)? addNewFilter,
    required TResult orElse(),
  }) {
    if (addNewFilter != null) {
      return addNewFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMockTasksEvent value) loadMockTasks,
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTaskEvent value) addTask,
    required TResult Function(_ToggleStatusEvent value) toggleStatus,
    required TResult Function(_ChangeViewStatusEvent value) changeViewStatus,
    required TResult Function(_ChangeSortingEvent value) changeSorting,
    required TResult Function(_AddNewFilterEvent value) addNewFilter,
  }) {
    return addNewFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
  }) {
    return addNewFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMockTasksEvent value)? loadMockTasks,
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTaskEvent value)? addTask,
    TResult Function(_ToggleStatusEvent value)? toggleStatus,
    TResult Function(_ChangeViewStatusEvent value)? changeViewStatus,
    TResult Function(_ChangeSortingEvent value)? changeSorting,
    TResult Function(_AddNewFilterEvent value)? addNewFilter,
    required TResult orElse(),
  }) {
    if (addNewFilter != null) {
      return addNewFilter(this);
    }
    return orElse();
  }
}

abstract class _AddNewFilterEvent implements TodoEvent {
  const factory _AddNewFilterEvent({required String filter}) =
      _$_AddNewFilterEvent;

  String get filter;
  @JsonKey(ignore: true)
  _$AddNewFilterEventCopyWith<_AddNewFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TodoStateTearOff {
  const _$TodoStateTearOff();

  _TodoState call(
      {required bool isLoading,
      required List<TodoModel> todos,
      required List<String> filters,
      required TodoStatus showStatus,
      required SortBy sortBy,
      required bool ascending}) {
    return _TodoState(
      isLoading: isLoading,
      todos: todos,
      filters: filters,
      showStatus: showStatus,
      sortBy: sortBy,
      ascending: ascending,
    );
  }
}

/// @nodoc
const $TodoState = _$TodoStateTearOff();

/// @nodoc
mixin _$TodoState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TodoModel> get todos => throw _privateConstructorUsedError;
  List<String> get filters => throw _privateConstructorUsedError;
  TodoStatus get showStatus => throw _privateConstructorUsedError;
  SortBy get sortBy => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<TodoModel> todos,
      List<String> filters,
      TodoStatus showStatus,
      SortBy sortBy,
      bool ascending});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? todos = freezed,
    Object? filters = freezed,
    Object? showStatus = freezed,
    Object? sortBy = freezed,
    Object? ascending = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showStatus: showStatus == freezed
          ? _value.showStatus
          : showStatus // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      ascending: ascending == freezed
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$TodoStateCopyWith(
          _TodoState value, $Res Function(_TodoState) then) =
      __$TodoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<TodoModel> todos,
      List<String> filters,
      TodoStatus showStatus,
      SortBy sortBy,
      bool ascending});
}

/// @nodoc
class __$TodoStateCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$TodoStateCopyWith<$Res> {
  __$TodoStateCopyWithImpl(_TodoState _value, $Res Function(_TodoState) _then)
      : super(_value, (v) => _then(v as _TodoState));

  @override
  _TodoState get _value => super._value as _TodoState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? todos = freezed,
    Object? filters = freezed,
    Object? showStatus = freezed,
    Object? sortBy = freezed,
    Object? ascending = freezed,
  }) {
    return _then(_TodoState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      filters: filters == freezed
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showStatus: showStatus == freezed
          ? _value.showStatus
          : showStatus // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      ascending: ascending == freezed
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoState implements _TodoState {
  const _$_TodoState(
      {required this.isLoading,
      required this.todos,
      required this.filters,
      required this.showStatus,
      required this.sortBy,
      required this.ascending});

  @override
  final bool isLoading;
  @override
  final List<TodoModel> todos;
  @override
  final List<String> filters;
  @override
  final TodoStatus showStatus;
  @override
  final SortBy sortBy;
  @override
  final bool ascending;

  @override
  String toString() {
    return 'TodoState(isLoading: $isLoading, todos: $todos, filters: $filters, showStatus: $showStatus, sortBy: $sortBy, ascending: $ascending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.todos, todos) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            const DeepCollectionEquality()
                .equals(other.showStatus, showStatus) &&
            const DeepCollectionEquality().equals(other.sortBy, sortBy) &&
            const DeepCollectionEquality().equals(other.ascending, ascending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(todos),
      const DeepCollectionEquality().hash(filters),
      const DeepCollectionEquality().hash(showStatus),
      const DeepCollectionEquality().hash(sortBy),
      const DeepCollectionEquality().hash(ascending));

  @JsonKey(ignore: true)
  @override
  _$TodoStateCopyWith<_TodoState> get copyWith =>
      __$TodoStateCopyWithImpl<_TodoState>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {required bool isLoading,
      required List<TodoModel> todos,
      required List<String> filters,
      required TodoStatus showStatus,
      required SortBy sortBy,
      required bool ascending}) = _$_TodoState;

  @override
  bool get isLoading;
  @override
  List<TodoModel> get todos;
  @override
  List<String> get filters;
  @override
  TodoStatus get showStatus;
  @override
  SortBy get sortBy;
  @override
  bool get ascending;
  @override
  @JsonKey(ignore: true)
  _$TodoStateCopyWith<_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
