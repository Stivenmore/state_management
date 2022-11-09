import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'manager_state.dart';

class ManagerCubit extends Cubit<ManagerState> {
  ManagerCubit() : super(ManagerState());

  void increment(){
     emit(state.copyWith(count: state.count + 1));
  }

  void decrement(){
    emit(state.copyWith(count:state.count - 1));
  }
}
