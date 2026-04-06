import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/my_tasks/data/repositories/my_tasks_repository.dart';
import 'my_tasks_state.dart';

class MyTasksCubit extends Cubit<MyTasksState> {
  MyTasksCubit({required this.repository}) : super(MyTasksInitial());
  final MyTasksRepository repository;

  Future<void> getMyTasks() async {
    emit(MyTasksLoading());
    final failureOrTasks = await repository.getMyTasks();
    failureOrTasks.fold(
      (failure) => emit(MyTasksError(message: failure.message)),
      (tasks) => emit(MyTasksLoaded(tasks: tasks)),
    );
  }
}
