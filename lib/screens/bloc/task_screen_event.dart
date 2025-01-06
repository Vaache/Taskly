part of 'task_screen_bloc.dart';

sealed class TaskScreenEvent {}

class AddTaskEvent extends TaskScreenEvent {
  final Task task;

  AddTaskEvent({required this.task});
}

class DeleteTaskEvent extends TaskScreenEvent {
  final Task task;

  DeleteTaskEvent({required this.task});
}

class ToggleTaskStatusEvent extends TaskScreenEvent {
  final Task task;
  final bool status;

  ToggleTaskStatusEvent({required this.task, required this.status});
}

class FilterTasksEvent extends TaskScreenEvent {
  final String? filter;

  FilterTasksEvent({this.filter});
}
