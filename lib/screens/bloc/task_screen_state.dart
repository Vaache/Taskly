part of 'task_screen_bloc.dart';

class TaskScreenState {
  final List<Task> allTasks;
  final List<Task> filteredTasks;

  TaskScreenState({this.allTasks = const [], this.filteredTasks = const []});

  TaskScreenState copyWith({List<Task>? tasks, List<Task>? filteredTasks}) {
    return TaskScreenState(
        allTasks: tasks ?? allTasks,
        filteredTasks: filteredTasks ?? this.filteredTasks);
  }
}
