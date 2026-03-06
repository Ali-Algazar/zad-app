import 'package:zad/features/home_donor/data/model/dashboard_model.dart';

abstract class HomeDonorState {}

class HomeDonorInitial extends HomeDonorState {}

class HomeDonorLoading extends HomeDonorState {}

class HomeDonorLoaded extends HomeDonorState {
  final DashboardModel stats;

  HomeDonorLoaded(this.stats);
}

class HomeDonorError extends HomeDonorState {
  final String message;

  HomeDonorError({required this.message});
}
