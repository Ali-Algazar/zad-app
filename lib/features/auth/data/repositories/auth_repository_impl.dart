import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:zad/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:zad/features/auth/data/model/user_model.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });
  @override
  Future<Either<Failure, UserModel>> login(
    String email,
    String password,
  ) async {
    try {
      var response = await remoteDataSource.login(
        email: email,
        password: password,
      );
      if (response.statusCode == 200) {
        await localDataSource.cacheUserToken(response.data['token']);
        await localDataSource.cachedUserRole(response.data['role']);
        var userResponse = await remoteDataSource.getUserData();

        await localDataSource.cacheUser(
          UserModel.fromJson(userResponse.data['data']),
        );

        await remoteDataSource.updateFcmToken();
        return Right(UserModel.fromJson(userResponse.data['data']));
      } else {
        return Left(
          ServerFailure(
            'Login failed with status code: ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      await localDataSource.clearCachedUser();
      await localDataSource.clearCachedUserToken();
      await Hive.deleteFromDisk();

      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserModel>> register({
    required String email,
    required String password,
    required String phone,
    required String displayName,
    required String governorate,
    required String role,
  }) async {
    try {
      var response = await remoteDataSource.register(
        displayName: displayName,
        email: email,
        governorate: governorate,
        password: password,
        phone: phone,
        role: role,
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        await localDataSource.cacheUserToken(response.data['token']);
        await localDataSource.cachedUserRole(response.data['role']);
        var userResponse = await remoteDataSource.getUserData();

        var user = UserModel.fromJson(userResponse.data['data']);
        await localDataSource.cacheUser(user);

        await remoteDataSource.updateFcmToken();

        return Right(user);
      } else {
        log(response.data.toString());
        return Left(
          ServerFailure(
            'Registration failed with status code: ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserModel>> checkAuth() async {
    try {
      final token = await localDataSource.getCachedUserToken();
      if (token == null) {
        return Left(ServerFailure('No cached token found'));
      }
      final user = await localDataSource.getCachedUser();
      if (user == null) {
        return Left(ServerFailure('No cached user found'));
      }
      return Right(user);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
