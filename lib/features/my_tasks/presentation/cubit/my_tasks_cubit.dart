import 'package:flutter_bloc/flutter_bloc.dart';
import 'my_tasks_state.dart';

class MyTasksCubit extends Cubit<MyTasksState> {
  MyTasksCubit() : super(MyTasksInitial());
}
