import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/my_tasks/data/models/task_model.dart';

abstract class MyTasksRepository {
  Future<Either<Failure, List<TaskModel>>> getMyTasks();
}
