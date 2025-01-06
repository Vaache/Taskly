import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskly/models/Task.dart';

part 'task_screen_event.dart';
part 'task_screen_state.dart';

class TaskScreenBloc extends Bloc<TaskScreenEvent, TaskScreenState> {
  TaskScreenBloc() : super(TaskScreenState()) {
    on<AddTaskEvent>(_onAddTaskEvent);
    on<DeleteTaskEvent>(_onDeleteTaskEvent);
    on<ToggleTaskStatusEvent>(_onToggleTaskStatusEvent);
    on<FilterTasksEvent>(_onFilterTasksEvent);
  }

  _onAddTaskEvent(AddTaskEvent event, Emitter<TaskScreenState> emit) {
    final updateTaskList = [...state.allTasks, event.task];
    final updateFilteredTaskList = [...state.filteredTasks, event.task];

    emit(TaskScreenState(
        allTasks: updateTaskList, filteredTasks: updateFilteredTaskList));
  }

  _onDeleteTaskEvent(DeleteTaskEvent event, Emitter<TaskScreenState> emit) {
    final taskList = state.allTasks;

    final updateTaskList =
        taskList.where((task) => task != event.task).toList();

    emit(TaskScreenState(allTasks: updateTaskList));
  }

  _onToggleTaskStatusEvent(
      ToggleTaskStatusEvent event, Emitter<TaskScreenState> emit) {
    final taskList = state.allTasks;

    final updateTaskList = taskList.map((task) {
      if (task == event.task) {
        return Task(
          name: event.task.name,
          title: event.task.title,
          isCompleted: event.status,
        );
      }
      return task;
    }).toList();

    final updateFilteredTasks =
        updateTaskList.where((task) => !task.isCompleted).toList();

    emit(TaskScreenState(
        allTasks: updateTaskList, filteredTasks: updateFilteredTasks));
  }

  _onFilterTasksEvent(FilterTasksEvent event, Emitter<TaskScreenState> emit) {
    final String? filter = event.filter;
    final allTasks = state.allTasks;
    final filteredTasks = filter == 'Completed'
        ? allTasks.where((task) => task.isCompleted).toList()
        : filter == 'Not Completed'
            ? allTasks.where((task) => !task.isCompleted).toList()
            : allTasks;

    emit(TaskScreenState(allTasks: allTasks, filteredTasks: filteredTasks));
  }
}
