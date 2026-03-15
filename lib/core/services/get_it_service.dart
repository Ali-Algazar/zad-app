import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:zad/core/services/api_helper.dart';
import 'package:zad/features/add_new_donation/data/datasources/add_new_donation_remote_data_source.dart';
import 'package:zad/features/add_new_donation/data/repositories/add_new_donation_repository.dart';
import 'package:zad/features/add_new_donation/data/repositories/add_new_donation_repository_impl.dart';
import 'package:zad/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:zad/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:zad/features/auth/data/repositories/auth_repository.dart';
import 'package:zad/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:zad/features/home_donor/data/datasources/home_donor_remote_data_source.dart';
import 'package:zad/features/home_donor/data/repositories/home_donor_repository.dart';
import 'package:zad/features/home_donor/data/repositories/home_donor_repository_impl.dart';
import 'package:zad/features/my_donations/data/datasources/my_donations_local_data_source.dart';
import 'package:zad/features/my_donations/data/datasources/my_donations_remote_data_source.dart';
import 'package:zad/features/my_donations/data/repositories/my_donations_repository.dart';
import 'package:zad/features/my_donations/data/repositories/my_donations_repository_impl.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    ),
  );
  sl.registerLazySingleton<Connectivity>(() => Connectivity());
  sl.registerLazySingleton<ApiHelper>(() => ApiHelper(sl<Dio>()));

  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(),
  );

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl<ApiHelper>()),
  );

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      localDataSource: sl<AuthLocalDataSource>(),
      remoteDataSource: sl<AuthRemoteDataSource>(),
    ),
  );
  sl.registerLazySingleton<HomeDonorRemoteDataSource>(
    () => HomeDonorRemoteDataSourceImpl(apiHelper: sl<ApiHelper>()),
  );
  sl.registerLazySingleton<HomeDonorRepository>(
    () => HomeDonorRepositoryImpl(
      remoteDataSource: sl<HomeDonorRemoteDataSource>(),
      connectivity: sl<Connectivity>(),
    ),
  );

  sl.registerLazySingleton<AddNewDonationRemoteDataSource>(
    () => AddNewDonationRemoteDataSourceImpl(apiHelper: sl<ApiHelper>()),
  );
  sl.registerLazySingleton<AddNewDonationRepository>(
    () => AddNewDonationRepositoryImpl(
      remoteDataSource: sl<AddNewDonationRemoteDataSource>(),
      connectivity: sl<Connectivity>(),
    ),
  );

  sl.registerLazySingleton<MyDonationsLocalDataSource>(
    () => MyDonationsLocalDataSourceImpl(),
  );

  sl.registerLazySingleton<MyDonationsRemoteDataSource>(
    () => MyDonationsRemoteDataSourceImpl(apiHelper: sl<ApiHelper>()),
  );

  sl.registerLazySingleton<MyDonationsRepository>(
    () => MyDonationsRepositoryImpl(
      localDataSource: sl<MyDonationsLocalDataSource>(),
      remoteDataSource: sl<MyDonationsRemoteDataSource>(),
      connectivity: sl<Connectivity>(),
    ),
  );
}
