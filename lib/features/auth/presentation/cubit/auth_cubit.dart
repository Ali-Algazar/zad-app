import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/auth/data/repositories/auth_repository.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepository) : super(AuthInitial());
  final AuthRepository authRepository;

  Future<void> login(String email, String password) async {
    emit(AuthLoading());
    var result = await authRepository.login(email, password);
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (user) => emit(Authenticated(user.role)),
    );
  }

  Future<void> register({
    required String email,
    required String password,
    required String phone,
    required String displayName,
    required String governorate,
    required String role,
  }) async {
    emit(AuthLoading());
    var result = await authRepository.register(
      email: email,
      password: password,
      phone: phone,
      displayName: displayName,
      governorate: governorate,
      role: role,
    );
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (user) => emit(Authenticated(user.role)),
    );
  }

  Future<void> logout() async {
    emit(AuthLoading());
    var result = await authRepository.logout();
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (_) => emit(UnAuthenticated()),
    );
  }

  Future<void> checkAuth() async {
    emit(AuthLoading());
    var result = await authRepository.checkAuth();
    result.fold(
      (failure) => emit(AuthError(failure.message)),
      (user) => emit(Authenticated(user.role)),
    );
  }
}
