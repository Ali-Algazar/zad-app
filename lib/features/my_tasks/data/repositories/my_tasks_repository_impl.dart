import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/my_tasks/data/datasources/my_tasks_remote_data_source.dart';
import 'package:zad/features/my_tasks/data/models/task_model.dart';

import 'my_tasks_repository.dart';
// (اختياري) يمكنك استيراد الـ datasources
// import '../datasources/my_tasks_remote_data_source.dart';
// import '../datasources/my_tasks_local_data_source.dart';

class MyTasksRepositoryImpl implements MyTasksRepository {
  final MyTasksRemoteDataSource remoteDataSource;

  MyTasksRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<TaskModel>>> getMyTasks() async {
    try {
      final response = await remoteDataSource.getMyTasks();
      List<TaskModel> tasks = (response.data['data'] as List)
          .map((taskJson) => TaskModel.fromJson(taskJson))
          .toList();
      if (tasks.isEmpty) {
        return Left(ServerFailure('No tasks found'));
      }
      return Right(tasks);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
