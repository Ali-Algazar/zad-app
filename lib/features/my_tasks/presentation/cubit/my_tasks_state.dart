import 'package:zad/features/my_tasks/data/models/task_model.dart';

abstract class MyTasksState {}

class MyTasksInitial extends MyTasksState {}

class MyTasksLoading extends MyTasksState {}

class MyTasksLoaded extends MyTasksState {
  final List<TaskModel> tasks;
  MyTasksLoaded({required this.tasks});
}

class MyTasksError extends MyTasksState {
  final String message;
  MyTasksError({required this.message});
}
