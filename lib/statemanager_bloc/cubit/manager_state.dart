// ignore_for_file: must_be_immutable

part of 'manager_cubit.dart';

class ManagerState extends Equatable {
  late final int count;

  ManagerState({int? count}){
    this.count = count ?? 0;
  }

  ManagerState copyWith({int? count}){
    return ManagerState(count: count ?? this.count);
  }

  @override
  List<Object?> get props => [count];
}