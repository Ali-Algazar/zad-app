import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/auth/data/model/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserModel>> login(String email, String password);
  Future<Either<Failure, UserModel>> register({
    required String email,
    required String password,
    required String phone,
    required String displayName,
    required String governorate,
    required String role,
  });
  Future<Either<Failure, Unit>> logout();
  Future<Either<Failure, UserModel>> checkAuth();
}
